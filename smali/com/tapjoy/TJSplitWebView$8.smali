.class final Lcom/tapjoy/TJSplitWebView$8;
.super Landroid/view/ViewOutlineProvider;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tapjoy/TJSplitWebView;->a(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:F

.field final synthetic b:Lcom/tapjoy/TJSplitWebView;


# direct methods
.method constructor <init>(Lcom/tapjoy/TJSplitWebView;F)V
    .locals 0

    .line 418
    iput-object p1, p0, Lcom/tapjoy/TJSplitWebView$8;->b:Lcom/tapjoy/TJSplitWebView;

    iput p2, p0, Lcom/tapjoy/TJSplitWebView$8;->a:F

    invoke-direct {p0}, Landroid/view/ViewOutlineProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public final getOutline(Landroid/view/View;Landroid/graphics/Outline;)V
    .locals 6

    .line 422
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v3

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    int-to-float p1, p1

    iget v5, p0, Lcom/tapjoy/TJSplitWebView$8;->a:F

    add-float/2addr p1, v5

    float-to-int v4, p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v0, p2

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Outline;->setRoundRect(IIIIF)V

    return-void
.end method
