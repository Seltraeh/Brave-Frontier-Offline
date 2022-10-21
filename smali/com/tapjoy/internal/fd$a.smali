.class public final Lcom/tapjoy/internal/fd$a;
.super Lcom/tapjoy/internal/ek$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tapjoy/internal/fd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/tapjoy/internal/ek$a<",
        "Lcom/tapjoy/internal/fd;",
        "Lcom/tapjoy/internal/fd$a;",
        ">;"
    }
.end annotation


# instance fields
.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;

.field public f:Ljava/lang/String;

.field public g:Ljava/lang/String;

.field public h:Ljava/lang/String;

.field public i:Ljava/lang/Integer;

.field public j:Ljava/lang/Integer;

.field public k:Ljava/lang/Integer;

.field public l:Ljava/lang/String;

.field public m:Ljava/lang/String;

.field public n:Ljava/lang/String;

.field public o:Ljava/lang/String;

.field public p:Ljava/lang/String;

.field public q:Ljava/lang/String;

.field public r:Ljava/lang/String;

.field public s:Ljava/lang/String;

.field public t:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 337
    invoke-direct {p0}, Lcom/tapjoy/internal/ek$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final b()Lcom/tapjoy/internal/fd;
    .locals 23

    move-object/from16 v0, p0

    .line 432
    new-instance v21, Lcom/tapjoy/internal/fd;

    move-object/from16 v1, v21

    iget-object v2, v0, Lcom/tapjoy/internal/fd$a;->c:Ljava/lang/String;

    iget-object v3, v0, Lcom/tapjoy/internal/fd$a;->d:Ljava/lang/String;

    iget-object v4, v0, Lcom/tapjoy/internal/fd$a;->e:Ljava/lang/String;

    iget-object v5, v0, Lcom/tapjoy/internal/fd$a;->f:Ljava/lang/String;

    iget-object v6, v0, Lcom/tapjoy/internal/fd$a;->g:Ljava/lang/String;

    iget-object v7, v0, Lcom/tapjoy/internal/fd$a;->h:Ljava/lang/String;

    iget-object v8, v0, Lcom/tapjoy/internal/fd$a;->i:Ljava/lang/Integer;

    iget-object v9, v0, Lcom/tapjoy/internal/fd$a;->j:Ljava/lang/Integer;

    iget-object v10, v0, Lcom/tapjoy/internal/fd$a;->k:Ljava/lang/Integer;

    iget-object v11, v0, Lcom/tapjoy/internal/fd$a;->l:Ljava/lang/String;

    iget-object v12, v0, Lcom/tapjoy/internal/fd$a;->m:Ljava/lang/String;

    iget-object v13, v0, Lcom/tapjoy/internal/fd$a;->n:Ljava/lang/String;

    iget-object v14, v0, Lcom/tapjoy/internal/fd$a;->o:Ljava/lang/String;

    iget-object v15, v0, Lcom/tapjoy/internal/fd$a;->p:Ljava/lang/String;

    move-object/from16 v22, v1

    iget-object v1, v0, Lcom/tapjoy/internal/fd$a;->q:Ljava/lang/String;

    move-object/from16 v16, v1

    iget-object v1, v0, Lcom/tapjoy/internal/fd$a;->r:Ljava/lang/String;

    move-object/from16 v17, v1

    iget-object v1, v0, Lcom/tapjoy/internal/fd$a;->s:Ljava/lang/String;

    move-object/from16 v18, v1

    iget-object v1, v0, Lcom/tapjoy/internal/fd$a;->t:Ljava/lang/String;

    move-object/from16 v19, v1

    invoke-super/range {p0 .. p0}, Lcom/tapjoy/internal/ek$a;->a()Lcom/tapjoy/internal/iy;

    move-result-object v20

    move-object/from16 v1, v22

    invoke-direct/range {v1 .. v20}, Lcom/tapjoy/internal/fd;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/tapjoy/internal/iy;)V

    return-object v21
.end method
