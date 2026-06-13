set -e

VITE_GRAPHQL_URI=${VITE_GRAPHQL_URI:-http://100.54.104.64:8082/graphql}
VITE_SERVER_URI=${VITE_SERVER_URI:-http://100.54.104.64:8082}

find /usr/share/nginx/html/assets -name '*.js' -exec sed -i "s|__VITE_GRAPHQL_URI_PLACEHOLDER__|${VITE_GRAPHQL_URI}|g" {} \;
find /usr/share/nginx/html/assets -name '*.js' -exec sed -i "s|__VITE_SERVER_URI_PLACEHOLDER__|${VITE_SERVER_URI}|g" {} \;

nginx -g "daemon off;"