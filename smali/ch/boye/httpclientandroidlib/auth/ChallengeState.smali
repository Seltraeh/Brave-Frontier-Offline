.class public final enum Lch/boye/httpclientandroidlib/auth/ChallengeState;
.super Ljava/lang/Enum;
.source "ChallengeState.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lch/boye/httpclientandroidlib/auth/ChallengeState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lch/boye/httpclientandroidlib/auth/ChallengeState;

.field public static final enum PROXY:Lch/boye/httpclientandroidlib/auth/ChallengeState;

.field public static final enum TARGET:Lch/boye/httpclientandroidlib/auth/ChallengeState;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 35
    new-instance v0, Lch/boye/httpclientandroidlib/auth/ChallengeState;

    const-string v1, "TARGET"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lch/boye/httpclientandroidlib/auth/ChallengeState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lch/boye/httpclientandroidlib/auth/ChallengeState;->TARGET:Lch/boye/httpclientandroidlib/auth/ChallengeState;

    new-instance v0, Lch/boye/httpclientandroidlib/auth/ChallengeState;

    const-string v1, "PROXY"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lch/boye/httpclientandroidlib/auth/ChallengeState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lch/boye/httpclientandroidlib/auth/ChallengeState;->PROXY:Lch/boye/httpclientandroidlib/auth/ChallengeState;

    const/4 v1, 0x2

    new-array v1, v1, [Lch/boye/httpclientandroidlib/auth/ChallengeState;

    .line 33
    sget-object v4, Lch/boye/httpclientandroidlib/auth/ChallengeState;->TARGET:Lch/boye/httpclientandroidlib/auth/ChallengeState;

    aput-object v4, v1, v2

    aput-object v0, v1, v3

    sput-object v1, Lch/boye/httpclientandroidlib/auth/ChallengeState;->$VALUES:[Lch/boye/httpclientandroidlib/auth/ChallengeState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 33
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lch/boye/httpclientandroidlib/auth/ChallengeState;
    .locals 1

    .line 33
    const-class v0, Lch/boye/httpclientandroidlib/auth/ChallengeState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lch/boye/httpclientandroidlib/auth/ChallengeState;

    return-object p0
.end method

.method public static values()[Lch/boye/httpclientandroidlib/auth/ChallengeState;
    .locals 1

    .line 33
    sget-object v0, Lch/boye/httpclientandroidlib/auth/ChallengeState;->$VALUES:[Lch/boye/httpclientandroidlib/auth/ChallengeState;

    invoke-virtual {v0}, [Lch/boye/httpclientandroidlib/auth/ChallengeState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lch/boye/httpclientandroidlib/auth/ChallengeState;

    return-object v0
.end method
