# ベースイメージとしてPostgreSQLを使用
FROM postgres:15

# 必要なパッケージをインストール
RUN apt-get update && apt-get install -y \
    default-jdk \
    wget \
    unzip \
    && rm -rf /var/lib/apt/lists/*

# MyBatis Migrationsのインストール
RUN wget https://github.com/mybatis/migrations/releases/download/mybatis-migrations-3.3.9/mybatis-migrations-3.3.9-bundle.zip \
    && unzip mybatis-migrations-3.3.9-bundle.zip -d /opt \
    && rm mybatis-migrations-3.3.9-bundle.zip

# パスを設定
ENV PATH="/opt/mybatis-migrations-3.3.9/bin:$PATH"

# PostgreSQLのエントリーポイントを指定（ベースイメージのCMDをオーバーライドしない）
CMD ["postgres"]
