.class public Lcom/pusher/java_websocket/exceptions/LimitExedeedException;
.super Lcom/pusher/java_websocket/exceptions/InvalidDataException;
.source "LimitExedeedException.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const/16 v0, 0x3f1

    .line 17
    invoke-direct {p0, v0, p1}, Lcom/pusher/java_websocket/exceptions/InvalidDataException;-><init>(ILjava/lang/String;)V

    return-void
.end method
