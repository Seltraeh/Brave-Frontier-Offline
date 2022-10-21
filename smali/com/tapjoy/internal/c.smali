.class public final Lcom/tapjoy/internal/c;
.super Landroid/app/Dialog;
.source "SourceFile"


# instance fields
.field private a:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const v0, 0x103000b

    .line 19
    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    const/4 p1, 0x0

    .line 16
    iput-boolean p1, p0, Lcom/tapjoy/internal/c;->a:Z

    const/4 p1, 0x1

    .line 21
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 23
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    const v0, 0x106000d

    invoke-virtual {p1, v0}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .line 70
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setLayout(II)V

    return-void
.end method

.method public final cancel()V
    .locals 1

    const/4 v0, 0x1

    .line 54
    iput-boolean v0, p0, Lcom/tapjoy/internal/c;->a:Z

    .line 55
    invoke-super {p0}, Landroid/app/Dialog;->cancel()V

    return-void
.end method

.method public final show()V
    .locals 1

    const/4 v0, 0x0

    .line 32
    iput-boolean v0, p0, Lcom/tapjoy/internal/c;->a:Z

    .line 33
    invoke-super {p0}, Landroid/app/Dialog;->show()V

    return-void
.end method
