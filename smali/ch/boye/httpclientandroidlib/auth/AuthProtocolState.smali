.class public final enum Lch/boye/httpclientandroidlib/auth/AuthProtocolState;
.super Ljava/lang/Enum;
.source "AuthProtocolState.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lch/boye/httpclientandroidlib/auth/AuthProtocolState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lch/boye/httpclientandroidlib/auth/AuthProtocolState;

.field public static final enum CHALLENGED:Lch/boye/httpclientandroidlib/auth/AuthProtocolState;

.field public static final enum FAILURE:Lch/boye/httpclientandroidlib/auth/AuthProtocolState;

.field public static final enum HANDSHAKE:Lch/boye/httpclientandroidlib/auth/AuthProtocolState;

.field public static final enum SUCCESS:Lch/boye/httpclientandroidlib/auth/AuthProtocolState;

.field public static final enum UNCHALLENGED:Lch/boye/httpclientandroidlib/auth/AuthProtocolState;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 31
    new-instance v0, Lch/boye/httpclientandroidlib/auth/AuthProtocolState;

    const-string v1, "UNCHALLENGED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lch/boye/httpclientandroidlib/auth/AuthProtocolState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lch/boye/httpclientandroidlib/auth/AuthProtocolState;->UNCHALLENGED:Lch/boye/httpclientandroidlib/auth/AuthProtocolState;

    new-instance v0, Lch/boye/httpclientandroidlib/auth/AuthProtocolState;

    const-string v1, "CHALLENGED"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lch/boye/httpclientandroidlib/auth/AuthProtocolState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lch/boye/httpclientandroidlib/auth/AuthProtocolState;->CHALLENGED:Lch/boye/httpclientandroidlib/auth/AuthProtocolState;

    new-instance v0, Lch/boye/httpclientandroidlib/auth/AuthProtocolState;

    const-string v1, "HANDSHAKE"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lch/boye/httpclientandroidlib/auth/AuthProtocolState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lch/boye/httpclientandroidlib/auth/AuthProtocolState;->HANDSHAKE:Lch/boye/httpclientandroidlib/auth/AuthProtocolState;

    new-instance v0, Lch/boye/httpclientandroidlib/auth/AuthProtocolState;

    const-string v1, "FAILURE"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lch/boye/httpclientandroidlib/auth/AuthProtocolState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lch/boye/httpclientandroidlib/auth/AuthProtocolState;->FAILURE:Lch/boye/httpclientandroidlib/auth/AuthProtocolState;

    new-instance v0, Lch/boye/httpclientandroidlib/auth/AuthProtocolState;

    const-string v1, "SUCCESS"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lch/boye/httpclientandroidlib/auth/AuthProtocolState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lch/boye/httpclientandroidlib/auth/AuthProtocolState;->SUCCESS:Lch/boye/httpclientandroidlib/auth/AuthProtocolState;

    const/4 v1, 0x5

    new-array v1, v1, [Lch/boye/httpclientandroidlib/auth/AuthProtocolState;

    .line 29
    sget-object v7, Lch/boye/httpclientandroidlib/auth/AuthProtocolState;->UNCHALLENGED:Lch/boye/httpclientandroidlib/auth/AuthProtocolState;

    aput-object v7, v1, v2

    sget-object v2, Lch/boye/httpclientandroidlib/auth/AuthProtocolState;->CHALLENGED:Lch/boye/httpclientandroidlib/auth/AuthProtocolState;

    aput-object v2, v1, v3

    sget-object v2, Lch/boye/httpclientandroidlib/auth/AuthProtocolState;->HANDSHAKE:Lch/boye/httpclientandroidlib/auth/AuthProtocolState;

    aput-object v2, v1, v4

    sget-object v2, Lch/boye/httpclientandroidlib/auth/AuthProtocolState;->FAILURE:Lch/boye/httpclientandroidlib/auth/AuthProtocolState;

    aput-object v2, v1, v5

    aput-object v0, v1, v6

    sput-object v1, Lch/boye/httpclientandroidlib/auth/AuthProtocolState;->$VALUES:[Lch/boye/httpclientandroidlib/auth/AuthProtocolState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 29
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lch/boye/httpclientandroidlib/auth/AuthProtocolState;
    .locals 1

    .line 29
    const-class v0, Lch/boye/httpclientandroidlib/auth/AuthProtocolState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lch/boye/httpclientandroidlib/auth/AuthProtocolState;

    return-object p0
.end method

.method public static values()[Lch/boye/httpclientandroidlib/auth/AuthProtocolState;
    .locals 1

    .line 29
    sget-object v0, Lch/boye/httpclientandroidlib/auth/AuthProtocolState;->$VALUES:[Lch/boye/httpclientandroidlib/auth/AuthProtocolState;

    invoke-virtual {v0}, [Lch/boye/httpclientandroidlib/auth/AuthProtocolState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lch/boye/httpclientandroidlib/auth/AuthProtocolState;

    return-object v0
.end method
