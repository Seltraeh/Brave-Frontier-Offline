.class final Lcom/tapjoy/internal/hf$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tapjoy/internal/q;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tapjoy/internal/hf;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .line 92
    invoke-static {p1}, Lcom/tapjoy/internal/hn;->a(Landroid/content/Context;)Lcom/tapjoy/internal/hn;

    move-result-object p1

    .line 1207
    iget-object p1, p1, Lcom/tapjoy/internal/hn;->b:Landroid/content/SharedPreferences;

    const-string v0, "gcm.senderIds"

    const-string v1, ""

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final a(Landroid/content/Context;I)V
    .locals 1

    .line 127
    invoke-static {p1}, Lcom/tapjoy/internal/hn;->a(Landroid/content/Context;)Lcom/tapjoy/internal/hn;

    move-result-object p1

    .line 1235
    iget-object p1, p1, Lcom/tapjoy/internal/hn;->b:Landroid/content/SharedPreferences;

    const-string v0, "gcm.appVersion"

    invoke-static {p1, v0, p2}, Lcom/tapjoy/internal/m;->a(Landroid/content/SharedPreferences;Ljava/lang/String;I)V

    return-void
.end method

.method public final a(Landroid/content/Context;J)V
    .locals 1

    .line 147
    invoke-static {p1}, Lcom/tapjoy/internal/hn;->a(Landroid/content/Context;)Lcom/tapjoy/internal/hn;

    move-result-object p1

    .line 1251
    iget-object p1, p1, Lcom/tapjoy/internal/hn;->b:Landroid/content/SharedPreferences;

    .line 2023
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v0, "gcm.onServerExpirationTime"

    .line 2024
    invoke-interface {p1, v0, p2, p3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 2025
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public final a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .line 97
    invoke-static {p1}, Lcom/tapjoy/internal/hn;->a(Landroid/content/Context;)Lcom/tapjoy/internal/hn;

    move-result-object p1

    .line 1211
    iget-object p1, p1, Lcom/tapjoy/internal/hn;->b:Landroid/content/SharedPreferences;

    const-string v0, "gcm.senderIds"

    invoke-static {p1, v0, p2}, Lcom/tapjoy/internal/m;->a(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final a(Landroid/content/Context;Z)V
    .locals 1

    .line 117
    invoke-static {p1}, Lcom/tapjoy/internal/hn;->a(Landroid/content/Context;)Lcom/tapjoy/internal/hn;

    move-result-object p1

    .line 1227
    iget-object p1, p1, Lcom/tapjoy/internal/hn;->b:Landroid/content/SharedPreferences;

    const-string v0, "gcm.stale"

    invoke-static {p1, v0, p2}, Lcom/tapjoy/internal/m;->a(Landroid/content/SharedPreferences;Ljava/lang/String;Z)V

    return-void
.end method

.method public final b(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .line 102
    invoke-static {p1}, Lcom/tapjoy/internal/hn;->a(Landroid/content/Context;)Lcom/tapjoy/internal/hn;

    move-result-object p1

    .line 1215
    iget-object p1, p1, Lcom/tapjoy/internal/hn;->b:Landroid/content/SharedPreferences;

    const-string v0, "gcm.regId"

    const-string v1, ""

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final b(Landroid/content/Context;I)V
    .locals 1

    .line 162
    invoke-static {p1}, Lcom/tapjoy/internal/hn;->a(Landroid/content/Context;)Lcom/tapjoy/internal/hn;

    move-result-object p1

    .line 2259
    iget-object p1, p1, Lcom/tapjoy/internal/hn;->b:Landroid/content/SharedPreferences;

    const-string v0, "gcm.backoff"

    invoke-static {p1, v0, p2}, Lcom/tapjoy/internal/m;->a(Landroid/content/SharedPreferences;Ljava/lang/String;I)V

    return-void
.end method

.method public final b(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .line 107
    invoke-static {p1}, Lcom/tapjoy/internal/hn;->a(Landroid/content/Context;)Lcom/tapjoy/internal/hn;

    move-result-object p1

    .line 1219
    iget-object p1, p1, Lcom/tapjoy/internal/hn;->b:Landroid/content/SharedPreferences;

    const-string v0, "gcm.regId"

    invoke-static {p1, v0, p2}, Lcom/tapjoy/internal/m;->a(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final b(Landroid/content/Context;Z)V
    .locals 0

    .line 137
    invoke-static {p1}, Lcom/tapjoy/internal/hn;->a(Landroid/content/Context;)Lcom/tapjoy/internal/hn;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/tapjoy/internal/hn;->a(Z)V

    return-void
.end method

.method public final c(Landroid/content/Context;)Z
    .locals 2

    .line 112
    invoke-static {p1}, Lcom/tapjoy/internal/hn;->a(Landroid/content/Context;)Lcom/tapjoy/internal/hn;

    move-result-object p1

    .line 1223
    iget-object p1, p1, Lcom/tapjoy/internal/hn;->b:Landroid/content/SharedPreferences;

    const-string v0, "gcm.stale"

    const/4 v1, 0x1

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    return p1
.end method

.method public final d(Landroid/content/Context;)I
    .locals 2

    .line 122
    invoke-static {p1}, Lcom/tapjoy/internal/hn;->a(Landroid/content/Context;)Lcom/tapjoy/internal/hn;

    move-result-object p1

    .line 1231
    iget-object p1, p1, Lcom/tapjoy/internal/hn;->b:Landroid/content/SharedPreferences;

    const-string v0, "gcm.appVersion"

    const/high16 v1, -0x80000000

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p1

    return p1
.end method

.method public final e(Landroid/content/Context;)Z
    .locals 2

    .line 132
    invoke-static {p1}, Lcom/tapjoy/internal/hn;->a(Landroid/content/Context;)Lcom/tapjoy/internal/hn;

    move-result-object p1

    .line 1239
    iget-object p1, p1, Lcom/tapjoy/internal/hn;->b:Landroid/content/SharedPreferences;

    const-string v0, "gcm.onServer"

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    return p1
.end method

.method public final f(Landroid/content/Context;)J
    .locals 3

    .line 142
    invoke-static {p1}, Lcom/tapjoy/internal/hn;->a(Landroid/content/Context;)Lcom/tapjoy/internal/hn;

    move-result-object p1

    .line 1247
    iget-object p1, p1, Lcom/tapjoy/internal/hn;->b:Landroid/content/SharedPreferences;

    const-string v0, "gcm.onServerExpirationTime"

    const-wide/16 v1, 0x0

    invoke-interface {p1, v0, v1, v2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public final g(Landroid/content/Context;)I
    .locals 2

    .line 157
    invoke-static {p1}, Lcom/tapjoy/internal/hn;->a(Landroid/content/Context;)Lcom/tapjoy/internal/hn;

    move-result-object p1

    .line 2255
    iget-object p1, p1, Lcom/tapjoy/internal/hn;->b:Landroid/content/SharedPreferences;

    const-string v0, "gcm.backoff"

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p1

    return p1
.end method
