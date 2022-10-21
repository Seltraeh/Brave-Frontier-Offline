.class public abstract Lcom/tapjoy/internal/bi;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tapjoy/internal/bf;
.implements Lcom/tapjoy/internal/bk;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tapjoy/internal/bi$a;
    }
.end annotation


# instance fields
.field private a:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/io/InputStream;)Lcom/tapjoy/internal/bi;
    .locals 1

    .line 29
    invoke-static {}, Lcom/tapjoy/internal/bi$a;->a()Lcom/tapjoy/internal/bi$a;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/tapjoy/internal/bi$a;->a(Ljava/io/InputStream;)Lcom/tapjoy/internal/bi;

    move-result-object p0

    return-object p0
.end method

.method private a(Ljava/util/List;)V
    .locals 1

    .line 190
    invoke-interface {p0}, Lcom/tapjoy/internal/bk;->f()V

    .line 191
    :goto_0
    invoke-interface {p0}, Lcom/tapjoy/internal/bk;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 192
    invoke-direct {p0}, Lcom/tapjoy/internal/bi;->u()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 194
    :cond_0
    invoke-interface {p0}, Lcom/tapjoy/internal/bk;->g()V

    return-void
.end method

.method public static b(Ljava/lang/String;)Lcom/tapjoy/internal/bi;
    .locals 1

    .line 37
    invoke-static {}, Lcom/tapjoy/internal/bi$a;->a()Lcom/tapjoy/internal/bi$a;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/tapjoy/internal/bi$a;->a(Ljava/lang/String;)Lcom/tapjoy/internal/bi;

    move-result-object p0

    return-object p0
.end method

.method private static d(Ljava/lang/String;)Ljava/net/URI;
    .locals 1

    .line 243
    :try_start_0
    new-instance v0, Ljava/net/URI;

    invoke-direct {v0, p0}, Ljava/net/URI;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p0

    .line 245
    new-instance v0, Lcom/tapjoy/internal/bq;

    invoke-direct {v0, p0}, Lcom/tapjoy/internal/bq;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method private t()Z
    .locals 2

    .line 118
    invoke-interface {p0}, Lcom/tapjoy/internal/bk;->k()Lcom/tapjoy/internal/bn;

    move-result-object v0

    sget-object v1, Lcom/tapjoy/internal/bn;->i:Lcom/tapjoy/internal/bn;

    if-ne v0, v1, :cond_0

    .line 119
    invoke-interface {p0}, Lcom/tapjoy/internal/bk;->o()V

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private u()Ljava/lang/Object;
    .locals 3

    .line 158
    invoke-interface {p0}, Lcom/tapjoy/internal/bk;->k()Lcom/tapjoy/internal/bn;

    move-result-object v0

    .line 159
    sget-object v1, Lcom/tapjoy/internal/bi$1;->a:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 174
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "Expected a value but was "

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 172
    :pswitch_0
    invoke-interface {p0}, Lcom/tapjoy/internal/bk;->m()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1179
    :pswitch_1
    new-instance v0, Lcom/tapjoy/internal/cd;

    invoke-interface {p0}, Lcom/tapjoy/internal/bk;->m()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/tapjoy/internal/cd;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 168
    :pswitch_2
    invoke-interface {p0}, Lcom/tapjoy/internal/bk;->n()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 165
    :pswitch_3
    invoke-interface {p0}, Lcom/tapjoy/internal/bk;->o()V

    const/4 v0, 0x0

    return-object v0

    .line 163
    :pswitch_4
    invoke-virtual {p0}, Lcom/tapjoy/internal/bi;->d()Ljava/util/Map;

    move-result-object v0

    return-object v0

    .line 161
    :pswitch_5
    invoke-virtual {p0}, Lcom/tapjoy/internal/bi;->c()Ljava/util/List;

    move-result-object v0

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public final a(Lcom/tapjoy/internal/bd;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/tapjoy/internal/bd<",
            "TT;>;)TT;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 218
    invoke-direct {p0}, Lcom/tapjoy/internal/bi;->t()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 221
    :cond_0
    invoke-interface {p1, p0}, Lcom/tapjoy/internal/bd;->a(Lcom/tapjoy/internal/bi;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final a(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/tapjoy/internal/bi;->a:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public final a(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    .line 77
    iget-object v0, p0, Lcom/tapjoy/internal/bi;->a:Ljava/util/HashMap;

    if-nez v0, :cond_0

    .line 78
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/tapjoy/internal/bi;->a:Ljava/util/HashMap;

    .line 80
    :cond_0
    iget-object v0, p0, Lcom/tapjoy/internal/bi;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final a(Ljava/util/List;Lcom/tapjoy/internal/bd;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "TT;>;",
            "Lcom/tapjoy/internal/bd<",
            "TT;>;)V"
        }
    .end annotation

    .line 225
    invoke-interface {p0}, Lcom/tapjoy/internal/bk;->f()V

    .line 226
    :goto_0
    invoke-interface {p0}, Lcom/tapjoy/internal/bk;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1213
    invoke-interface {p2, p0}, Lcom/tapjoy/internal/bd;->a(Lcom/tapjoy/internal/bi;)Ljava/lang/Object;

    move-result-object v0

    .line 227
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 229
    :cond_0
    invoke-interface {p0}, Lcom/tapjoy/internal/bk;->g()V

    return-void
.end method

.method public final a(Ljava/util/Map;)V
    .locals 2

    .line 205
    invoke-interface {p0}, Lcom/tapjoy/internal/bk;->h()V

    .line 206
    :goto_0
    invoke-interface {p0}, Lcom/tapjoy/internal/bk;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 207
    invoke-interface {p0}, Lcom/tapjoy/internal/bk;->l()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0}, Lcom/tapjoy/internal/bi;->u()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 209
    :cond_0
    invoke-interface {p0}, Lcom/tapjoy/internal/bk;->i()V

    return-void
.end method

.method public final a()Z
    .locals 2

    .line 93
    invoke-interface {p0}, Lcom/tapjoy/internal/bk;->k()Lcom/tapjoy/internal/bn;

    move-result-object v0

    sget-object v1, Lcom/tapjoy/internal/bn;->c:Lcom/tapjoy/internal/bn;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .line 134
    invoke-direct {p0}, Lcom/tapjoy/internal/bi;->t()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 137
    :cond_0
    invoke-interface {p0}, Lcom/tapjoy/internal/bk;->m()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final c(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 151
    invoke-direct {p0}, Lcom/tapjoy/internal/bi;->t()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p1

    .line 154
    :cond_0
    invoke-interface {p0}, Lcom/tapjoy/internal/bk;->m()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final c()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">()",
            "Ljava/util/List<",
            "TE;>;"
        }
    .end annotation

    .line 183
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 184
    invoke-direct {p0, v0}, Lcom/tapjoy/internal/bi;->a(Ljava/util/List;)V

    return-object v0
.end method

.method public final d()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 198
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 199
    invoke-virtual {p0, v0}, Lcom/tapjoy/internal/bi;->a(Ljava/util/Map;)V

    return-object v0
.end method

.method public final e()Ljava/net/URL;
    .locals 2

    const-string v0, "BASE_URI"

    .line 2016
    invoke-interface {p0, v0}, Lcom/tapjoy/internal/bf;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/URI;

    if-eqz v0, :cond_0

    .line 309
    invoke-interface {p0}, Lcom/tapjoy/internal/bk;->m()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tapjoy/internal/bi;->d(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/net/URI;->resolve(Ljava/net/URI;)Ljava/net/URI;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URI;->toURL()Ljava/net/URL;

    move-result-object v0

    return-object v0

    .line 311
    :cond_0
    new-instance v0, Ljava/net/URL;

    invoke-interface {p0}, Lcom/tapjoy/internal/bk;->m()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    return-object v0
.end method
