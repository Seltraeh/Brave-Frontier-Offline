.class final Lcom/tapjoy/internal/dx$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tapjoy/internal/dx;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/tapjoy/internal/dx;

.field private final b:Landroid/webkit/WebView;


# direct methods
.method constructor <init>(Lcom/tapjoy/internal/dx;)V
    .locals 0

    iput-object p1, p0, Lcom/tapjoy/internal/dx$1;->a:Lcom/tapjoy/internal/dx;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object p1, p0, Lcom/tapjoy/internal/dx$1;->a:Lcom/tapjoy/internal/dx;

    .line 1000
    iget-object p1, p1, Lcom/tapjoy/internal/dx;->e:Landroid/webkit/WebView;

    iput-object p1, p0, Lcom/tapjoy/internal/dx$1;->b:Landroid/webkit/WebView;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/tapjoy/internal/dx$1;->b:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V

    return-void
.end method
