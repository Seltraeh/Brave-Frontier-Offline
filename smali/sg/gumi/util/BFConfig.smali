.class public final Lsg/gumi/util/BFConfig;
.super Ljava/lang/Object;
.source "BFConfig.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsg/gumi/util/BFConfig$Platform;
    }
.end annotation


# static fields
.field public static final PLATFORM:Lsg/gumi/util/BFConfig$Platform;

.field public static final PLATFORM_AMAZON:Lsg/gumi/util/BFConfig$Platform;

.field public static final PLATFORM_GOOGLE:Lsg/gumi/util/BFConfig$Platform;

.field public static final PLATFORM_SAMSUNG:Lsg/gumi/util/BFConfig$Platform;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 15
    sget-object v0, Lsg/gumi/util/BFConfig$Platform;->PLATFORM_AMAZON:Lsg/gumi/util/BFConfig$Platform;

    sput-object v0, Lsg/gumi/util/BFConfig;->PLATFORM_AMAZON:Lsg/gumi/util/BFConfig$Platform;

    .line 16
    sget-object v0, Lsg/gumi/util/BFConfig$Platform;->PLATFORM_GOOGLE:Lsg/gumi/util/BFConfig$Platform;

    sput-object v0, Lsg/gumi/util/BFConfig;->PLATFORM_GOOGLE:Lsg/gumi/util/BFConfig$Platform;

    .line 17
    sget-object v0, Lsg/gumi/util/BFConfig$Platform;->PLATFORM_SAMSUNG:Lsg/gumi/util/BFConfig$Platform;

    sput-object v0, Lsg/gumi/util/BFConfig;->PLATFORM_SAMSUNG:Lsg/gumi/util/BFConfig$Platform;

    .line 24
    sget-object v0, Lsg/gumi/util/BFConfig$Platform;->PLATFORM_GOOGLE:Lsg/gumi/util/BFConfig$Platform;

    sput-object v0, Lsg/gumi/util/BFConfig;->PLATFORM:Lsg/gumi/util/BFConfig$Platform;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
