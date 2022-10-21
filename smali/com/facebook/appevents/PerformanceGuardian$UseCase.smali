.class public final enum Lcom/facebook/appevents/PerformanceGuardian$UseCase;
.super Ljava/lang/Enum;
.source "PerformanceGuardian.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/appevents/PerformanceGuardian;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "UseCase"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/facebook/appevents/PerformanceGuardian$UseCase;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/facebook/appevents/PerformanceGuardian$UseCase;

.field public static final enum CODELESS:Lcom/facebook/appevents/PerformanceGuardian$UseCase;

.field public static final enum SUGGESTED_EVENT:Lcom/facebook/appevents/PerformanceGuardian$UseCase;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 43
    new-instance v0, Lcom/facebook/appevents/PerformanceGuardian$UseCase;

    const-string v1, "CODELESS"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/facebook/appevents/PerformanceGuardian$UseCase;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/appevents/PerformanceGuardian$UseCase;->CODELESS:Lcom/facebook/appevents/PerformanceGuardian$UseCase;

    .line 44
    new-instance v0, Lcom/facebook/appevents/PerformanceGuardian$UseCase;

    const-string v1, "SUGGESTED_EVENT"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/facebook/appevents/PerformanceGuardian$UseCase;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/appevents/PerformanceGuardian$UseCase;->SUGGESTED_EVENT:Lcom/facebook/appevents/PerformanceGuardian$UseCase;

    const/4 v1, 0x2

    new-array v1, v1, [Lcom/facebook/appevents/PerformanceGuardian$UseCase;

    .line 42
    sget-object v4, Lcom/facebook/appevents/PerformanceGuardian$UseCase;->CODELESS:Lcom/facebook/appevents/PerformanceGuardian$UseCase;

    aput-object v4, v1, v2

    aput-object v0, v1, v3

    sput-object v1, Lcom/facebook/appevents/PerformanceGuardian$UseCase;->$VALUES:[Lcom/facebook/appevents/PerformanceGuardian$UseCase;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 42
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/facebook/appevents/PerformanceGuardian$UseCase;
    .locals 1

    .line 42
    const-class v0, Lcom/facebook/appevents/PerformanceGuardian$UseCase;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/facebook/appevents/PerformanceGuardian$UseCase;

    return-object p0
.end method

.method public static values()[Lcom/facebook/appevents/PerformanceGuardian$UseCase;
    .locals 1

    .line 42
    sget-object v0, Lcom/facebook/appevents/PerformanceGuardian$UseCase;->$VALUES:[Lcom/facebook/appevents/PerformanceGuardian$UseCase;

    invoke-virtual {v0}, [Lcom/facebook/appevents/PerformanceGuardian$UseCase;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/appevents/PerformanceGuardian$UseCase;

    return-object v0
.end method
