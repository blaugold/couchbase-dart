
#include <core/cluster.hxx>
#include <dart_api_dl.h>
#include <spdlog/spdlog.h>

extern "C" {

bool CBD_Init(void *data)
{
    spdlog::set_pattern("[%Y-%m-%d %T.%e] [%P,%t] [%^%l%$] %oms, %v");

    auto spdLogLevel = spdlog::level::off;
    auto cbppLogLevel = couchbase::core::logger::level::off;
    {
        const char *logLevelCstr = getenv("CBPPLOGLEVEL");
        if (logLevelCstr) {
            std::string logLevelStr = logLevelCstr;
            if (logLevelStr == "trace") {
                spdLogLevel = spdlog::level::trace;
                cbppLogLevel = couchbase::core::logger::level::trace;
            } else if (logLevelStr == "debug") {
                spdLogLevel = spdlog::level::debug;
                cbppLogLevel = couchbase::core::logger::level::debug;
            } else if (logLevelStr == "info") {
                spdLogLevel = spdlog::level::info;
                cbppLogLevel = couchbase::core::logger::level::info;
            } else if (logLevelStr == "warn") {
                spdLogLevel = spdlog::level::warn;
                cbppLogLevel = couchbase::core::logger::level::warn;
            } else if (logLevelStr == "err") {
                spdLogLevel = spdlog::level::err;
                cbppLogLevel = couchbase::core::logger::level::err;
            } else if (logLevelStr == "critical") {
                spdLogLevel = spdlog::level::critical;
                cbppLogLevel = couchbase::core::logger::level::critical;
            }
        }
    }
    if (cbppLogLevel != couchbase::core::logger::level::off) {
        couchbase::core::logger::create_console_logger();
    }
    spdlog::set_level(spdLogLevel);
    couchbase::core::logger::set_log_levels(cbppLogLevel);

    return Dart_InitializeApiDL(data) == 0;
}
}