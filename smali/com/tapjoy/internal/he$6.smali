.class final Lcom/tapjoy/internal/he$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tapjoy/internal/he;->a(Ljava/lang/String;Lcom/tapjoy/internal/gp;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/tapjoy/internal/gp;

.field final synthetic c:Lcom/tapjoy/internal/he;


# direct methods
.method constructor <init>(Lcom/tapjoy/internal/he;Ljava/lang/String;Lcom/tapjoy/internal/gp;)V
    .locals 0

    .line 121
    iput-object p1, p0, Lcom/tapjoy/internal/he$6;->c:Lcom/tapjoy/internal/he;

    iput-object p2, p0, Lcom/tapjoy/internal/he$6;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/tapjoy/internal/he$6;->b:Lcom/tapjoy/internal/gp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 124
    iget-object v0, p0, Lcom/tapjoy/internal/he$6;->c:Lcom/tapjoy/internal/he;

    invoke-static {v0}, Lcom/tapjoy/internal/he;->a(Lcom/tapjoy/internal/he;)Lcom/tapjoy/internal/gs;

    move-result-object v0

    iget-object v1, p0, Lcom/tapjoy/internal/he$6;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/tapjoy/internal/he$6;->b:Lcom/tapjoy/internal/gp;

    invoke-interface {v0, v1, v2}, Lcom/tapjoy/internal/gs;->a(Ljava/lang/String;Lcom/tapjoy/internal/gp;)V

    return-void
.end method
