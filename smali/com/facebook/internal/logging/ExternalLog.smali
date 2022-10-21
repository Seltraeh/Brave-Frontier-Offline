.class public interface abstract Lcom/facebook/internal/logging/ExternalLog;
.super Ljava/lang/Object;
.source "ExternalLog.java"

# interfaces
.implements Ljava/io/Serializable;


# virtual methods
.method public abstract convertToJSONObject()Lorg/json/JSONObject;
.end method

.method public abstract getEventName()Ljava/lang/String;
.end method

.method public abstract getLogCategory()Lcom/facebook/internal/logging/LogCategory;
.end method
