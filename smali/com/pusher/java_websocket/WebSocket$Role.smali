.class public final enum Lcom/pusher/java_websocket/WebSocket$Role;
.super Ljava/lang/Enum;
.source "WebSocket.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pusher/java_websocket/WebSocket;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Role"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/pusher/java_websocket/WebSocket$Role;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/pusher/java_websocket/WebSocket$Role;

.field public static final enum CLIENT:Lcom/pusher/java_websocket/WebSocket$Role;

.field public static final enum SERVER:Lcom/pusher/java_websocket/WebSocket$Role;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 12
    new-instance v0, Lcom/pusher/java_websocket/WebSocket$Role;

    const-string v1, "CLIENT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/pusher/java_websocket/WebSocket$Role;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pusher/java_websocket/WebSocket$Role;->CLIENT:Lcom/pusher/java_websocket/WebSocket$Role;

    new-instance v0, Lcom/pusher/java_websocket/WebSocket$Role;

    const-string v1, "SERVER"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/pusher/java_websocket/WebSocket$Role;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pusher/java_websocket/WebSocket$Role;->SERVER:Lcom/pusher/java_websocket/WebSocket$Role;

    const/4 v1, 0x2

    new-array v1, v1, [Lcom/pusher/java_websocket/WebSocket$Role;

    .line 11
    sget-object v4, Lcom/pusher/java_websocket/WebSocket$Role;->CLIENT:Lcom/pusher/java_websocket/WebSocket$Role;

    aput-object v4, v1, v2

    aput-object v0, v1, v3

    sput-object v1, Lcom/pusher/java_websocket/WebSocket$Role;->$VALUES:[Lcom/pusher/java_websocket/WebSocket$Role;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 11
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/pusher/java_websocket/WebSocket$Role;
    .locals 1

    .line 11
    const-class v0, Lcom/pusher/java_websocket/WebSocket$Role;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/pusher/java_websocket/WebSocket$Role;

    return-object p0
.end method

.method public static values()[Lcom/pusher/java_websocket/WebSocket$Role;
    .locals 1

    .line 11
    sget-object v0, Lcom/pusher/java_websocket/WebSocket$Role;->$VALUES:[Lcom/pusher/java_websocket/WebSocket$Role;

    invoke-virtual {v0}, [Lcom/pusher/java_websocket/WebSocket$Role;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/pusher/java_websocket/WebSocket$Role;

    return-object v0
.end method
