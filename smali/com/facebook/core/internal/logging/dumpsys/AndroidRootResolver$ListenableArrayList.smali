.class public Lcom/facebook/core/internal/logging/dumpsys/AndroidRootResolver$ListenableArrayList;
.super Ljava/util/ArrayList;
.source "AndroidRootResolver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/core/internal/logging/dumpsys/AndroidRootResolver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ListenableArrayList"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayList<",
        "Landroid/view/View;",
        ">;"
    }
.end annotation


# instance fields
.field private listener:Lcom/facebook/core/internal/logging/dumpsys/AndroidRootResolver$Listener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 72
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-void
.end method


# virtual methods
.method public add(Landroid/view/View;)Z
    .locals 2

    .line 81
    invoke-super {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 82
    iget-object v1, p0, Lcom/facebook/core/internal/logging/dumpsys/AndroidRootResolver$ListenableArrayList;->listener:Lcom/facebook/core/internal/logging/dumpsys/AndroidRootResolver$Listener;

    if-eqz v1, :cond_0

    .line 83
    invoke-interface {v1, p1}, Lcom/facebook/core/internal/logging/dumpsys/AndroidRootResolver$Listener;->onRootAdded(Landroid/view/View;)V

    .line 84
    iget-object p1, p0, Lcom/facebook/core/internal/logging/dumpsys/AndroidRootResolver$ListenableArrayList;->listener:Lcom/facebook/core/internal/logging/dumpsys/AndroidRootResolver$Listener;

    invoke-interface {p1, p0}, Lcom/facebook/core/internal/logging/dumpsys/AndroidRootResolver$Listener;->onRootsChanged(Ljava/util/List;)V

    :cond_0
    return v0
.end method

.method public bridge synthetic add(Ljava/lang/Object;)Z
    .locals 0

    .line 72
    check-cast p1, Landroid/view/View;

    invoke-virtual {p0, p1}, Lcom/facebook/core/internal/logging/dumpsys/AndroidRootResolver$ListenableArrayList;->add(Landroid/view/View;)Z

    move-result p1

    return p1
.end method

.method public remove(I)Landroid/view/View;
    .locals 1

    .line 101
    invoke-super {p0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    .line 102
    iget-object v0, p0, Lcom/facebook/core/internal/logging/dumpsys/AndroidRootResolver$ListenableArrayList;->listener:Lcom/facebook/core/internal/logging/dumpsys/AndroidRootResolver$Listener;

    if-eqz v0, :cond_0

    .line 103
    invoke-interface {v0, p1}, Lcom/facebook/core/internal/logging/dumpsys/AndroidRootResolver$Listener;->onRootRemoved(Landroid/view/View;)V

    .line 104
    iget-object v0, p0, Lcom/facebook/core/internal/logging/dumpsys/AndroidRootResolver$ListenableArrayList;->listener:Lcom/facebook/core/internal/logging/dumpsys/AndroidRootResolver$Listener;

    invoke-interface {v0, p0}, Lcom/facebook/core/internal/logging/dumpsys/AndroidRootResolver$Listener;->onRootsChanged(Ljava/util/List;)V

    :cond_0
    return-object p1
.end method

.method public bridge synthetic remove(I)Ljava/lang/Object;
    .locals 0

    .line 72
    invoke-virtual {p0, p1}, Lcom/facebook/core/internal/logging/dumpsys/AndroidRootResolver$ListenableArrayList;->remove(I)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 3

    .line 91
    invoke-super {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 92
    iget-object v1, p0, Lcom/facebook/core/internal/logging/dumpsys/AndroidRootResolver$ListenableArrayList;->listener:Lcom/facebook/core/internal/logging/dumpsys/AndroidRootResolver$Listener;

    if-eqz v1, :cond_0

    instance-of v2, p1, Landroid/view/View;

    if-eqz v2, :cond_0

    .line 93
    check-cast p1, Landroid/view/View;

    invoke-interface {v1, p1}, Lcom/facebook/core/internal/logging/dumpsys/AndroidRootResolver$Listener;->onRootRemoved(Landroid/view/View;)V

    .line 94
    iget-object p1, p0, Lcom/facebook/core/internal/logging/dumpsys/AndroidRootResolver$ListenableArrayList;->listener:Lcom/facebook/core/internal/logging/dumpsys/AndroidRootResolver$Listener;

    invoke-interface {p1, p0}, Lcom/facebook/core/internal/logging/dumpsys/AndroidRootResolver$Listener;->onRootsChanged(Ljava/util/List;)V

    :cond_0
    return v0
.end method

.method public setListener(Lcom/facebook/core/internal/logging/dumpsys/AndroidRootResolver$Listener;)V
    .locals 0

    .line 76
    iput-object p1, p0, Lcom/facebook/core/internal/logging/dumpsys/AndroidRootResolver$ListenableArrayList;->listener:Lcom/facebook/core/internal/logging/dumpsys/AndroidRootResolver$Listener;

    return-void
.end method
