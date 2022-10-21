.class public final Lcom/tapjoy/internal/ee;
.super Lcom/tapjoy/internal/ea;


# direct methods
.method public constructor <init>(Lcom/tapjoy/internal/eb$b;Ljava/util/HashSet;Lorg/json/JSONObject;J)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tapjoy/internal/eb$b;",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;",
            "Lorg/json/JSONObject;",
            "J)V"
        }
    .end annotation

    invoke-direct/range {p0 .. p5}, Lcom/tapjoy/internal/ea;-><init>(Lcom/tapjoy/internal/eb$b;Ljava/util/HashSet;Lorg/json/JSONObject;J)V

    return-void
.end method


# virtual methods
.method protected final a(Ljava/lang/String;)V
    .locals 7

    .line 1000
    invoke-static {}, Lcom/tapjoy/internal/de;->a()Lcom/tapjoy/internal/de;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2000
    iget-object v0, v0, Lcom/tapjoy/internal/de;->a:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    .line 1000
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tapjoy/internal/cy;

    iget-object v2, p0, Lcom/tapjoy/internal/ea;->a:Ljava/util/HashSet;

    .line 3000
    iget-object v3, v1, Lcom/tapjoy/internal/cy;->f:Ljava/lang/String;

    .line 1000
    invoke-virtual {v2, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4000
    iget-object v1, v1, Lcom/tapjoy/internal/cy;->c:Lcom/tapjoy/internal/dv;

    .line 1000
    iget-wide v2, p0, Lcom/tapjoy/internal/ea;->c:J

    .line 5000
    iget-wide v4, v1, Lcom/tapjoy/internal/dv;->d:J

    cmp-long v6, v2, v4

    if-ltz v6, :cond_0

    iget v2, v1, Lcom/tapjoy/internal/dv;->c:I

    sget v3, Lcom/tapjoy/internal/dv$a;->c:I

    if-eq v2, v3, :cond_0

    iput v3, v1, Lcom/tapjoy/internal/dv;->c:I

    invoke-static {}, Lcom/tapjoy/internal/di;->a()Lcom/tapjoy/internal/di;

    move-result-object v2

    invoke-virtual {v1}, Lcom/tapjoy/internal/dv;->c()Landroid/webkit/WebView;

    move-result-object v1

    invoke-virtual {v2, v1, p1}, Lcom/tapjoy/internal/di;->b(Landroid/webkit/WebView;Ljava/lang/String;)V

    goto :goto_0

    .line 1000
    :cond_1
    invoke-super {p0, p1}, Lcom/tapjoy/internal/eb;->a(Ljava/lang/String;)V

    return-void
.end method

.method protected final synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 6000
    iget-object p1, p0, Lcom/tapjoy/internal/ea;->b:Lorg/json/JSONObject;

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/tapjoy/internal/ee;->a(Ljava/lang/String;)V

    return-void
.end method
