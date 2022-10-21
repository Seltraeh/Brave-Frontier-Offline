.class public interface abstract Lcom/facebook/internal/logging/LoggingCache;
.super Ljava/lang/Object;
.source "LoggingCache.java"


# virtual methods
.method public abstract addLog(Lcom/facebook/internal/logging/ExternalLog;)Z
.end method

.method public abstract addLogs(Ljava/util/Collection;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Lcom/facebook/internal/logging/ExternalLog;",
            ">;)Z"
        }
    .end annotation
.end method

.method public abstract fetchAllLogs()Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/facebook/internal/logging/ExternalLog;",
            ">;"
        }
    .end annotation
.end method

.method public abstract fetchLog()Lcom/facebook/internal/logging/ExternalLog;
.end method

.method public abstract isEmpty()Z
.end method
