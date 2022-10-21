.class public Lcom/vungle/warren/AdConfig;
.super Ljava/lang/Object;
.source "AdConfig.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vungle/warren/AdConfig$Orientation;,
        Lcom/vungle/warren/AdConfig$AdSize;,
        Lcom/vungle/warren/AdConfig$Settings;
    }
.end annotation


# static fields
.field public static final APK_DIRECT_DOWNLOAD:I = 0x20

.field public static final AUTO_ROTATE:I = 0x2

.field public static final FLAG_DIRECT_DOWNLOAD:Ljava/lang/String; = "direct_download"

.field public static final IMMEDIATE_BACK:I = 0x2

.field public static final IMMERSIVE:I = 0x4

.field public static final LANDSCAPE:I = 0x1

.field public static final MATCH_VIDEO:I = 0x3

.field public static final MUTED:I = 0x1

.field public static final PORTRAIT:I = 0x0

.field public static final TRANSITION_ANIMATE:I = 0x8


# instance fields
.field private adOrientation:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "adOrientation"
    .end annotation

    .annotation build Lcom/vungle/warren/AdConfig$Orientation;
    .end annotation
.end field

.field private adSize:Lcom/vungle/warren/AdConfig$AdSize;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "adSize"
    .end annotation
.end field

.field private flexviewCloseSec:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "flexviewCloseSec"
    .end annotation
.end field

.field private ordinal:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "ordinal"
    .end annotation
.end field

.field private settings:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "settings"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    sget-object v0, Lcom/vungle/warren/AdConfig$AdSize;->VUNGLE_DEFAULT:Lcom/vungle/warren/AdConfig$AdSize;

    iput-object v0, p0, Lcom/vungle/warren/AdConfig;->adSize:Lcom/vungle/warren/AdConfig$AdSize;

    const/4 v0, 0x2

    .line 124
    iput v0, p0, Lcom/vungle/warren/AdConfig;->adOrientation:I

    return-void
.end method


# virtual methods
.method public getAdOrientation()I
    .locals 1
    .annotation build Lcom/vungle/warren/AdConfig$Orientation;
    .end annotation

    .line 277
    iget v0, p0, Lcom/vungle/warren/AdConfig;->adOrientation:I

    return v0
.end method

.method public getAdSize()Lcom/vungle/warren/AdConfig$AdSize;
    .locals 1

    .line 258
    iget-object v0, p0, Lcom/vungle/warren/AdConfig;->adSize:Lcom/vungle/warren/AdConfig$AdSize;

    if-nez v0, :cond_0

    sget-object v0, Lcom/vungle/warren/AdConfig$AdSize;->VUNGLE_DEFAULT:Lcom/vungle/warren/AdConfig$AdSize;

    :cond_0
    return-object v0
.end method

.method public getFlexViewCloseTime()I
    .locals 1

    .line 240
    iget v0, p0, Lcom/vungle/warren/AdConfig;->flexviewCloseSec:I

    return v0
.end method

.method public getOrdinal()I
    .locals 1

    .line 220
    iget v0, p0, Lcom/vungle/warren/AdConfig;->ordinal:I

    return v0
.end method

.method public getSettings()I
    .locals 1

    .line 142
    iget v0, p0, Lcom/vungle/warren/AdConfig;->settings:I

    return v0
.end method

.method public setAdOrientation(I)V
    .locals 0
    .param p1    # I
        .annotation build Lcom/vungle/warren/AdConfig$Orientation;
        .end annotation
    .end param

    .line 286
    iput p1, p0, Lcom/vungle/warren/AdConfig;->adOrientation:I

    return-void
.end method

.method public setAdSize(Lcom/vungle/warren/AdConfig$AdSize;)V
    .locals 0

    .line 268
    iput-object p1, p0, Lcom/vungle/warren/AdConfig;->adSize:Lcom/vungle/warren/AdConfig$AdSize;

    return-void
.end method

.method public setBackButtonImmediatelyEnabled(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 178
    iget p1, p0, Lcom/vungle/warren/AdConfig;->settings:I

    or-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/vungle/warren/AdConfig;->settings:I

    goto :goto_0

    .line 180
    :cond_0
    iget p1, p0, Lcom/vungle/warren/AdConfig;->settings:I

    and-int/lit8 p1, p1, -0x3

    iput p1, p0, Lcom/vungle/warren/AdConfig;->settings:I

    :goto_0
    return-void
.end method

.method public setFlexViewCloseTime(I)V
    .locals 0

    .line 249
    iput p1, p0, Lcom/vungle/warren/AdConfig;->flexviewCloseSec:I

    return-void
.end method

.method public setImmersiveMode(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 194
    iget p1, p0, Lcom/vungle/warren/AdConfig;->settings:I

    or-int/lit8 p1, p1, 0x4

    iput p1, p0, Lcom/vungle/warren/AdConfig;->settings:I

    goto :goto_0

    .line 196
    :cond_0
    iget p1, p0, Lcom/vungle/warren/AdConfig;->settings:I

    and-int/lit8 p1, p1, -0x5

    iput p1, p0, Lcom/vungle/warren/AdConfig;->settings:I

    :goto_0
    return-void
.end method

.method public setMuted(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 158
    iget p1, p0, Lcom/vungle/warren/AdConfig;->settings:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/vungle/warren/AdConfig;->settings:I

    goto :goto_0

    .line 160
    :cond_0
    iget p1, p0, Lcom/vungle/warren/AdConfig;->settings:I

    and-int/lit8 p1, p1, -0x2

    iput p1, p0, Lcom/vungle/warren/AdConfig;->settings:I

    :goto_0
    return-void
.end method

.method public setOrdinal(I)V
    .locals 0

    .line 231
    iput p1, p0, Lcom/vungle/warren/AdConfig;->ordinal:I

    return-void
.end method

.method public setTransitionAnimationEnabled(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 210
    iget p1, p0, Lcom/vungle/warren/AdConfig;->settings:I

    or-int/lit8 p1, p1, 0x8

    iput p1, p0, Lcom/vungle/warren/AdConfig;->settings:I

    goto :goto_0

    .line 212
    :cond_0
    iget p1, p0, Lcom/vungle/warren/AdConfig;->settings:I

    and-int/lit8 p1, p1, -0x9

    iput p1, p0, Lcom/vungle/warren/AdConfig;->settings:I

    :goto_0
    return-void
.end method
