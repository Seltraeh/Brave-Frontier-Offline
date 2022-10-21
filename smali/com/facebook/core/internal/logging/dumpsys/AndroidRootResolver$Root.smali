.class public Lcom/facebook/core/internal/logging/dumpsys/AndroidRootResolver$Root;
.super Ljava/lang/Object;
.source "AndroidRootResolver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/core/internal/logging/dumpsys/AndroidRootResolver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Root"
.end annotation


# instance fields
.field public final param:Landroid/view/WindowManager$LayoutParams;

.field public final view:Landroid/view/View;


# direct methods
.method private constructor <init>(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;)V
    .locals 0

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput-object p1, p0, Lcom/facebook/core/internal/logging/dumpsys/AndroidRootResolver$Root;->view:Landroid/view/View;

    .line 60
    iput-object p2, p0, Lcom/facebook/core/internal/logging/dumpsys/AndroidRootResolver$Root;->param:Landroid/view/WindowManager$LayoutParams;

    return-void
.end method

.method synthetic constructor <init>(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;Lcom/facebook/core/internal/logging/dumpsys/AndroidRootResolver$1;)V
    .locals 0

    .line 54
    invoke-direct {p0, p1, p2}, Lcom/facebook/core/internal/logging/dumpsys/AndroidRootResolver$Root;-><init>(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;)V

    return-void
.end method
