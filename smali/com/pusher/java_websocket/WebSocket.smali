.class public interface abstract Lcom/pusher/java_websocket/WebSocket;
.super Ljava/lang/Object;
.source "WebSocket.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pusher/java_websocket/WebSocket$READYSTATE;,
        Lcom/pusher/java_websocket/WebSocket$Role;
    }
.end annotation


# virtual methods
.method public abstract getLocalSocketAddress()Ljava/net/InetSocketAddress;
.end method

.method public abstract sendFrame(Lcom/pusher/java_websocket/framing/Framedata;)V
.end method
