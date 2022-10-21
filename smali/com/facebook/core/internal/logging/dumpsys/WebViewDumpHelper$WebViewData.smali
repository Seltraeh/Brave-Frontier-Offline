.class final Lcom/facebook/core/internal/logging/dumpsys/WebViewDumpHelper$WebViewData;
.super Ljava/lang/Object;
.source "WebViewDumpHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/core/internal/logging/dumpsys/WebViewDumpHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "WebViewData"
.end annotation


# static fields
.field private static final mLocation:[I


# instance fields
.field public final height:I

.field public final key:Ljava/lang/String;

.field public final left:I

.field public final top:I

.field public final width:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 141
    sput-object v0, Lcom/facebook/core/internal/logging/dumpsys/WebViewDumpHelper$WebViewData;->mLocation:[I

    return-void
.end method

.method public constructor <init>(Landroid/webkit/WebView;)V
    .locals 4

    .line 148
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 151
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x1

    aput-object v1, v0, v3

    const-string v1, "%s{%s}"

    .line 150
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/core/internal/logging/dumpsys/WebViewDumpHelper$WebViewData;->key:Ljava/lang/String;

    .line 152
    sget-object v0, Lcom/facebook/core/internal/logging/dumpsys/WebViewDumpHelper$WebViewData;->mLocation:[I

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->getLocationOnScreen([I)V

    .line 153
    sget-object v0, Lcom/facebook/core/internal/logging/dumpsys/WebViewDumpHelper$WebViewData;->mLocation:[I

    aget v1, v0, v2

    iput v1, p0, Lcom/facebook/core/internal/logging/dumpsys/WebViewDumpHelper$WebViewData;->left:I

    .line 154
    aget v0, v0, v3

    iput v0, p0, Lcom/facebook/core/internal/logging/dumpsys/WebViewDumpHelper$WebViewData;->top:I

    .line 155
    invoke-virtual {p1}, Landroid/webkit/WebView;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/facebook/core/internal/logging/dumpsys/WebViewDumpHelper$WebViewData;->width:I

    .line 156
    invoke-virtual {p1}, Landroid/webkit/WebView;->getHeight()I

    move-result p1

    iput p1, p0, Lcom/facebook/core/internal/logging/dumpsys/WebViewDumpHelper$WebViewData;->height:I

    return-void
.end method
