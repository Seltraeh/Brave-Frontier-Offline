.class public final Lcom/tapjoy/internal/fg$a;
.super Lcom/tapjoy/internal/ek$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tapjoy/internal/fg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/tapjoy/internal/ek$a<",
        "Lcom/tapjoy/internal/fg;",
        "Lcom/tapjoy/internal/fg$a;",
        ">;"
    }
.end annotation


# instance fields
.field public c:Ljava/lang/String;

.field public d:Ljava/lang/Integer;

.field public e:Ljava/lang/Double;

.field public f:Ljava/lang/String;

.field public g:Ljava/lang/String;

.field public h:Ljava/lang/String;

.field public i:Ljava/lang/String;

.field public j:Ljava/lang/String;

.field public k:Ljava/lang/Integer;

.field public l:Ljava/lang/Long;

.field public m:Ljava/lang/String;

.field public n:Ljava/lang/String;

.field public o:Ljava/lang/String;

.field public p:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 278
    invoke-direct {p0}, Lcom/tapjoy/internal/ek$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final b()Lcom/tapjoy/internal/fg;
    .locals 18

    move-object/from16 v0, p0

    .line 353
    iget-object v1, v0, Lcom/tapjoy/internal/fg$a;->c:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 356
    new-instance v1, Lcom/tapjoy/internal/fg;

    iget-object v3, v0, Lcom/tapjoy/internal/fg$a;->c:Ljava/lang/String;

    iget-object v4, v0, Lcom/tapjoy/internal/fg$a;->d:Ljava/lang/Integer;

    iget-object v5, v0, Lcom/tapjoy/internal/fg$a;->e:Ljava/lang/Double;

    iget-object v6, v0, Lcom/tapjoy/internal/fg$a;->f:Ljava/lang/String;

    iget-object v7, v0, Lcom/tapjoy/internal/fg$a;->g:Ljava/lang/String;

    iget-object v8, v0, Lcom/tapjoy/internal/fg$a;->h:Ljava/lang/String;

    iget-object v9, v0, Lcom/tapjoy/internal/fg$a;->i:Ljava/lang/String;

    iget-object v10, v0, Lcom/tapjoy/internal/fg$a;->j:Ljava/lang/String;

    iget-object v11, v0, Lcom/tapjoy/internal/fg$a;->k:Ljava/lang/Integer;

    iget-object v12, v0, Lcom/tapjoy/internal/fg$a;->l:Ljava/lang/Long;

    iget-object v13, v0, Lcom/tapjoy/internal/fg$a;->m:Ljava/lang/String;

    iget-object v14, v0, Lcom/tapjoy/internal/fg$a;->n:Ljava/lang/String;

    iget-object v15, v0, Lcom/tapjoy/internal/fg$a;->o:Ljava/lang/String;

    iget-object v2, v0, Lcom/tapjoy/internal/fg$a;->p:Ljava/lang/String;

    invoke-super/range {p0 .. p0}, Lcom/tapjoy/internal/ek$a;->a()Lcom/tapjoy/internal/iy;

    move-result-object v17

    move-object/from16 v16, v2

    move-object v2, v1

    invoke-direct/range {v2 .. v17}, Lcom/tapjoy/internal/fg;-><init>(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Double;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/tapjoy/internal/iy;)V

    return-object v1

    :cond_0
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    const/4 v1, 0x1

    const-string v3, "productId"

    aput-object v3, v2, v1

    .line 354
    invoke-static {v2}, Lcom/tapjoy/internal/er;->a([Ljava/lang/Object;)Ljava/lang/IllegalStateException;

    move-result-object v1

    throw v1
.end method
