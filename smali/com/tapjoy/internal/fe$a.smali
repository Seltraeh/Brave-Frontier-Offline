.class public final Lcom/tapjoy/internal/fe$a;
.super Lcom/tapjoy/internal/ek$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tapjoy/internal/fe;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/tapjoy/internal/ek$a<",
        "Lcom/tapjoy/internal/fe;",
        "Lcom/tapjoy/internal/fe$a;",
        ">;"
    }
.end annotation


# instance fields
.field public c:Lcom/tapjoy/internal/fd;

.field public d:Lcom/tapjoy/internal/ex;

.field public e:Lcom/tapjoy/internal/fk;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 103
    invoke-direct {p0}, Lcom/tapjoy/internal/ek$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final b()Lcom/tapjoy/internal/fe;
    .locals 5

    .line 123
    new-instance v0, Lcom/tapjoy/internal/fe;

    iget-object v1, p0, Lcom/tapjoy/internal/fe$a;->c:Lcom/tapjoy/internal/fd;

    iget-object v2, p0, Lcom/tapjoy/internal/fe$a;->d:Lcom/tapjoy/internal/ex;

    iget-object v3, p0, Lcom/tapjoy/internal/fe$a;->e:Lcom/tapjoy/internal/fk;

    invoke-super {p0}, Lcom/tapjoy/internal/ek$a;->a()Lcom/tapjoy/internal/iy;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/tapjoy/internal/fe;-><init>(Lcom/tapjoy/internal/fd;Lcom/tapjoy/internal/ex;Lcom/tapjoy/internal/fk;Lcom/tapjoy/internal/iy;)V

    return-object v0
.end method
