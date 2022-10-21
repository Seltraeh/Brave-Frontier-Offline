.class public final enum Lsg/gumi/util/BFConfig$Platform;
.super Ljava/lang/Enum;
.source "BFConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsg/gumi/util/BFConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Platform"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lsg/gumi/util/BFConfig$Platform;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lsg/gumi/util/BFConfig$Platform;

.field public static final enum PLATFORM_AMAZON:Lsg/gumi/util/BFConfig$Platform;

.field public static final enum PLATFORM_GOOGLE:Lsg/gumi/util/BFConfig$Platform;

.field public static final enum PLATFORM_SAMSUNG:Lsg/gumi/util/BFConfig$Platform;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 10
    new-instance v0, Lsg/gumi/util/BFConfig$Platform;

    const-string v1, "PLATFORM_GOOGLE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lsg/gumi/util/BFConfig$Platform;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lsg/gumi/util/BFConfig$Platform;->PLATFORM_GOOGLE:Lsg/gumi/util/BFConfig$Platform;

    .line 11
    new-instance v0, Lsg/gumi/util/BFConfig$Platform;

    const-string v1, "PLATFORM_AMAZON"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lsg/gumi/util/BFConfig$Platform;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lsg/gumi/util/BFConfig$Platform;->PLATFORM_AMAZON:Lsg/gumi/util/BFConfig$Platform;

    .line 12
    new-instance v0, Lsg/gumi/util/BFConfig$Platform;

    const-string v1, "PLATFORM_SAMSUNG"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lsg/gumi/util/BFConfig$Platform;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lsg/gumi/util/BFConfig$Platform;->PLATFORM_SAMSUNG:Lsg/gumi/util/BFConfig$Platform;

    const/4 v1, 0x3

    new-array v1, v1, [Lsg/gumi/util/BFConfig$Platform;

    .line 9
    sget-object v5, Lsg/gumi/util/BFConfig$Platform;->PLATFORM_GOOGLE:Lsg/gumi/util/BFConfig$Platform;

    aput-object v5, v1, v2

    sget-object v2, Lsg/gumi/util/BFConfig$Platform;->PLATFORM_AMAZON:Lsg/gumi/util/BFConfig$Platform;

    aput-object v2, v1, v3

    aput-object v0, v1, v4

    sput-object v1, Lsg/gumi/util/BFConfig$Platform;->$VALUES:[Lsg/gumi/util/BFConfig$Platform;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 9
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lsg/gumi/util/BFConfig$Platform;
    .locals 1

    .line 9
    const-class v0, Lsg/gumi/util/BFConfig$Platform;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lsg/gumi/util/BFConfig$Platform;

    return-object p0
.end method

.method public static values()[Lsg/gumi/util/BFConfig$Platform;
    .locals 1

    .line 9
    sget-object v0, Lsg/gumi/util/BFConfig$Platform;->$VALUES:[Lsg/gumi/util/BFConfig$Platform;

    invoke-virtual {v0}, [Lsg/gumi/util/BFConfig$Platform;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lsg/gumi/util/BFConfig$Platform;

    return-object v0
.end method
