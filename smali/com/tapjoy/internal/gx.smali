.class public abstract Lcom/tapjoy/internal/gx;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:Lcom/tapjoy/internal/gx;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static b(Landroid/app/Activity;)V
    .locals 1

    .line 25
    sget-object v0, Lcom/tapjoy/internal/gx;->a:Lcom/tapjoy/internal/gx;

    if-eqz v0, :cond_0

    .line 26
    invoke-virtual {v0, p0}, Lcom/tapjoy/internal/gx;->a(Landroid/app/Activity;)V

    :cond_0
    return-void
.end method


# virtual methods
.method protected abstract a(Landroid/app/Activity;)V
.end method
