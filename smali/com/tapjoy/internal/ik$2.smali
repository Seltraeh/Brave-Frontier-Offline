.class final Lcom/tapjoy/internal/ik$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tapjoy/internal/ik;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/tapjoy/internal/ik;


# direct methods
.method constructor <init>(Lcom/tapjoy/internal/ik;)V
    .locals 0

    .line 37
    iput-object p1, p0, Lcom/tapjoy/internal/ik$2;->a:Lcom/tapjoy/internal/ik;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/tapjoy/internal/ik$2;->a:Lcom/tapjoy/internal/ik;

    invoke-static {v0}, Lcom/tapjoy/internal/ik;->b(Lcom/tapjoy/internal/ik;)Landroid/graphics/Bitmap;

    .line 41
    iget-object v0, p0, Lcom/tapjoy/internal/ik$2;->a:Lcom/tapjoy/internal/ik;

    invoke-static {v0}, Lcom/tapjoy/internal/ik;->c(Lcom/tapjoy/internal/ik;)Lcom/tapjoy/internal/ig;

    .line 42
    iget-object v0, p0, Lcom/tapjoy/internal/ik$2;->a:Lcom/tapjoy/internal/ik;

    invoke-static {v0}, Lcom/tapjoy/internal/ik;->d(Lcom/tapjoy/internal/ik;)Ljava/lang/Thread;

    .line 43
    iget-object v0, p0, Lcom/tapjoy/internal/ik$2;->a:Lcom/tapjoy/internal/ik;

    invoke-static {v0}, Lcom/tapjoy/internal/ik;->e(Lcom/tapjoy/internal/ik;)Z

    return-void
.end method
