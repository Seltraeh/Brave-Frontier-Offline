.class public Lcom/vungle/warren/error/VungleException;
.super Ljava/lang/Exception;
.source "VungleException.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vungle/warren/error/VungleException$ExceptionCode;
    }
.end annotation


# static fields
.field public static final AD_EXPIRED:I = 0x4

.field public static final AD_FAILED_TO_DOWNLOAD:I = 0xb

.field public static final AD_UNABLE_TO_PLAY:I = 0xa

.field public static final ALREADY_PLAYING_ANOTHER_AD:I = 0xf

.field public static final APPLICATION_CONTEXT_REQUIRED:I = 0x7

.field public static final ASSET_DOWNLOAD_ERROR:I = 0x18

.field public static final ASSET_DOWNLOAD_RECOVERABLE:I = 0x17

.field public static final CONFIGURATION_ERROR:I = 0x3

.field public static final DB_ERROR:I = 0x1a

.field public static final DIRECT_DOWNLOAD_VALIDATION_ERROR:I = 0x5

.field public static final INCORRECT_BANNER_API_USAGE:I = 0x1e

.field public static final INCORRECT_DEFAULT_API_USAGE:I = 0x1d

.field public static final INVALID_SIZE:I = 0x1c

.field public static final MISSING_REQUIRED_ARGUMENTS_FOR_INIT:I = 0x6

.field public static final NETWORK_ERROR:I = 0x14

.field public static final NO_AUTO_CACHED_PLACEMENT:I = 0xc

.field public static final NO_SERVE:I = 0x1

.field public static final NO_SPACE_TO_DOWNLOAD_ASSETS:I = 0x13

.field public static final NO_SPACE_TO_INIT:I = 0x10

.field public static final NO_SPACE_TO_LOAD_AD:I = 0x11

.field public static final NO_SPACE_TO_LOAD_AD_AUTO_CACHED:I = 0x12

.field public static final OK_HTTP_NOT_SUPPORTED_PLATFORM:I = 0x21

.field public static final OPERATION_CANCELED:I = 0x19

.field public static final OPERATION_ONGOING:I = 0x8

.field public static final PLACEMENT_NOT_FOUND:I = 0xd

.field public static final RENDER_ERROR:I = 0x1b

.field public static final SERVER_ERROR:I = 0x15

.field public static final SERVER_RETRY_ERROR:I = 0xe

.field public static final SERVER_TEMPORARY_UNAVAILABLE:I = 0x16

.field public static final UNKNOWN_ERROR:I = 0x2

.field public static final VUNGLE_NOT_INTIALIZED:I = 0x9

.field public static final WEBVIEW_RENDER_UNRESPONSIVE:I = 0x20

.field public static final WEB_CRASH:I = 0x1f


# instance fields
.field private final exceptionCode:I
    .annotation build Lcom/vungle/warren/error/VungleException$ExceptionCode;
    .end annotation
.end field


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .param p1    # I
        .annotation build Lcom/vungle/warren/error/VungleException$ExceptionCode;
        .end annotation
    .end param

    .line 64
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 65
    iput p1, p0, Lcom/vungle/warren/error/VungleException;->exceptionCode:I

    return-void
.end method

.method public static getExceptionCode(Ljava/lang/Throwable;)I
    .locals 1

    .line 157
    instance-of v0, p0, Lcom/vungle/warren/error/VungleException;

    if-eqz v0, :cond_0

    .line 158
    check-cast p0, Lcom/vungle/warren/error/VungleException;

    invoke-virtual {p0}, Lcom/vungle/warren/error/VungleException;->getExceptionCode()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, -0x1

    return p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    .line 167
    const-class v2, Lcom/vungle/warren/error/VungleException;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 169
    :cond_1
    check-cast p1, Lcom/vungle/warren/error/VungleException;

    .line 171
    iget v2, p0, Lcom/vungle/warren/error/VungleException;->exceptionCode:I

    iget p1, p1, Lcom/vungle/warren/error/VungleException;->exceptionCode:I

    if-ne v2, p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public getExceptionCode()I
    .locals 1
    .annotation build Lcom/vungle/warren/error/VungleException$ExceptionCode;
    .end annotation

    .line 70
    iget v0, p0, Lcom/vungle/warren/error/VungleException;->exceptionCode:I

    return v0
.end method

.method public getLocalizedMessage()Ljava/lang/String;
    .locals 2

    .line 75
    iget v0, p0, Lcom/vungle/warren/error/VungleException;->exceptionCode:I

    packed-switch v0, :pswitch_data_0

    .line 144
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unknown Exception Code"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    const-string v0, "OkHttp v4.x/3.14.x is not supported on Android API<21, please use version 3.12.x"

    return-object v0

    :pswitch_1
    const-string v0, "Android web view render became unresponsive, please clean-up your Webview process if any"

    return-object v0

    :pswitch_2
    const-string v0, "Android web view has crashed"

    return-object v0

    :pswitch_3
    const-string v0, "Cannot request or play MREC, Flexfeed or FullScreen Ads from Banner API, please use Vungle.loadAd(), Vungle.playAd() or Vungle.getNativeAd()"

    return-object v0

    :pswitch_4
    const-string v0, "Cannot request or play Banner Ads from Vungle API, please use Banner.loadAd() or Banner.getBanner()"

    return-object v0

    :pswitch_5
    const-string v0, "Ad size is invalid"

    return-object v0

    :pswitch_6
    const-string v0, "Render error"

    return-object v0

    :pswitch_7
    const-string v0, "Database error"

    return-object v0

    :pswitch_8
    const-string v0, "Operation was canceled"

    return-object v0

    :pswitch_9
    const-string v0, "Assets download failed."

    return-object v0

    :pswitch_a
    const-string v0, "Assets download failed. Try again later"

    return-object v0

    :pswitch_b
    const-string v0, "Server temporary unavailable. Try again later"

    return-object v0

    :pswitch_c
    const-string v0, "Server error"

    return-object v0

    :pswitch_d
    const-string v0, "Network error. Try again later"

    return-object v0

    :pswitch_e
    const-string v0, "There is not enough file system size on a device to download assets for an ad."

    return-object v0

    :pswitch_f
    const-string v0, "There is not enough file system size on a device to request an ad for auto cache."

    return-object v0

    :pswitch_10
    const-string v0, "There is not enough file system size on a device to request an ad."

    return-object v0

    :pswitch_11
    const-string v0, "There is not enough file system size on a device to initialize VungleSDK"

    return-object v0

    :pswitch_12
    const-string v0, "Vungle is already playing different ad."

    return-object v0

    :pswitch_13
    const-string v0, "Remote Server responded with http Retry-After, SDK will retry this request."

    return-object v0

    :pswitch_14
    const-string v0, "Placement is not valid"

    return-object v0

    :pswitch_15
    const-string v0, "No auto-cached Placement on config"

    return-object v0

    :pswitch_16
    const-string v0, "Advertisement failed to download"

    return-object v0

    :pswitch_17
    const-string v0, "Unable to play advertisement"

    return-object v0

    :pswitch_18
    const-string v0, "Vungle is not initialized/no longer initialized. Please call Vungle.init() to reinitialize."

    return-object v0

    :pswitch_19
    const-string v0, "There is already an ongoing operation for the action you requested. Please wait until the operation finished before starting another."

    return-object v0

    :pswitch_1a
    const-string v0, "Please provide Application context so our SDK can continue to support our API beyond Activity lifecycle"

    return-object v0

    :pswitch_1b
    const-string v0, "Please ensure all parameter for init marked as NonNull are provided, as they are essential for functioning of our SDK"

    return-object v0

    :pswitch_1c
    const-string v0, "The App for Advertisement does not exist in the App store for DirectDownload. Please load another ad"

    return-object v0

    :pswitch_1d
    const-string v0, "The advertisement in the cache has expired and can no longer be played. Please load another ad"

    return-object v0

    :pswitch_1e
    const-string v0, "Configuration Error Occurred. Please check your appID and placementIDs, and try again when network connectivity is available."

    return-object v0

    :pswitch_1f
    const-string v0, "Unknown Error Occurred."

    return-object v0

    :pswitch_20
    const-string v0, "No advertisements are available for your current bid. Please try again later."

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public hashCode()I
    .locals 1

    .line 176
    iget v0, p0, Lcom/vungle/warren/error/VungleException;->exceptionCode:I

    return v0
.end method
