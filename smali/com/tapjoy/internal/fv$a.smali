.class public final Lcom/tapjoy/internal/fv$a;
.super Ljava/util/Observable;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tapjoy/internal/fv;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/util/Observable;-><init>()V

    return-void
.end method


# virtual methods
.method public final notifyObservers()V
    .locals 0

    .line 14
    invoke-virtual {p0}, Ljava/util/Observable;->setChanged()V

    .line 15
    invoke-super {p0}, Ljava/util/Observable;->notifyObservers()V

    return-void
.end method

.method public final notifyObservers(Ljava/lang/Object;)V
    .locals 0

    .line 20
    invoke-virtual {p0}, Ljava/util/Observable;->setChanged()V

    .line 21
    invoke-super {p0, p1}, Ljava/util/Observable;->notifyObservers(Ljava/lang/Object;)V

    return-void
.end method
