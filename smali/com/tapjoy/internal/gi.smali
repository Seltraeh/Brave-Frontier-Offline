.class public final Lcom/tapjoy/internal/gi;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final d:Lcom/tapjoy/internal/gi;

.field private static e:Lcom/tapjoy/internal/gi;


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Z

.field private f:Ljava/lang/Boolean;

.field private g:Ljava/lang/Boolean;

.field private h:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 15
    new-instance v0, Lcom/tapjoy/internal/gi;

    invoke-direct {v0}, Lcom/tapjoy/internal/gi;-><init>()V

    .line 17
    sput-object v0, Lcom/tapjoy/internal/gi;->d:Lcom/tapjoy/internal/gi;

    sput-object v0, Lcom/tapjoy/internal/gi;->e:Lcom/tapjoy/internal/gi;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 20
    iput-object v0, p0, Lcom/tapjoy/internal/gi;->f:Ljava/lang/Boolean;

    .line 21
    iput-object v0, p0, Lcom/tapjoy/internal/gi;->a:Ljava/lang/String;

    .line 22
    iput-object v0, p0, Lcom/tapjoy/internal/gi;->g:Ljava/lang/Boolean;

    .line 23
    iput-object v0, p0, Lcom/tapjoy/internal/gi;->b:Ljava/lang/String;

    const/4 v0, 0x0

    .line 25
    iput-boolean v0, p0, Lcom/tapjoy/internal/gi;->c:Z

    return-void
.end method

.method public static a()Lcom/tapjoy/internal/gi;
    .locals 1

    .line 31
    sget-object v0, Lcom/tapjoy/internal/gi;->e:Lcom/tapjoy/internal/gi;

    return-object v0
.end method

.method private d()Z
    .locals 3

    .line 80
    iget-object v0, p0, Lcom/tapjoy/internal/gi;->h:Landroid/content/Context;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string v2, "tjcPrefrences"

    .line 81
    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 82
    iget-object v1, p0, Lcom/tapjoy/internal/gi;->f:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    const-string v2, "gdpr"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 83
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    const/4 v0, 0x1

    return v0

    :cond_0
    return v1
.end method

.method private e()Z
    .locals 3

    .line 91
    iget-object v0, p0, Lcom/tapjoy/internal/gi;->h:Landroid/content/Context;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string v2, "tjcPrefrences"

    .line 92
    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 93
    iget-object v1, p0, Lcom/tapjoy/internal/gi;->a:Ljava/lang/String;

    const-string v2, "cgdpr"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 94
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    const/4 v0, 0x1

    return v0

    :cond_0
    return v1
.end method

.method private f()Z
    .locals 3

    .line 191
    iget-object v0, p0, Lcom/tapjoy/internal/gi;->h:Landroid/content/Context;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string v2, "tjcPrefrences"

    .line 192
    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 193
    iget-object v1, p0, Lcom/tapjoy/internal/gi;->g:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    const-string v2, "below_consent_age"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 194
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    const/4 v0, 0x1

    return v0

    :cond_0
    return v1
.end method


# virtual methods
.method public final declared-synchronized a(Landroid/content/Context;)V
    .locals 4

    monitor-enter p0

    if-eqz p1, :cond_0

    .line 40
    :try_start_0
    iget-object v0, p0, Lcom/tapjoy/internal/gi;->h:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 41
    iput-object p1, p0, Lcom/tapjoy/internal/gi;->h:Landroid/content/Context;

    .line 1031
    :cond_0
    sget-object p1, Lcom/tapjoy/internal/gi;->e:Lcom/tapjoy/internal/gi;

    .line 1126
    iget-object v0, p1, Lcom/tapjoy/internal/gi;->h:Landroid/content/Context;

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    .line 1127
    iget-object v0, p1, Lcom/tapjoy/internal/gi;->h:Landroid/content/Context;

    const-string v2, "tjcPrefrences"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1130
    iget-object v2, p1, Lcom/tapjoy/internal/gi;->f:Ljava/lang/Boolean;

    if-nez v2, :cond_1

    const-string v2, "gdpr"

    invoke-interface {v0, v2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "gdpr"

    .line 1131
    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, p1, Lcom/tapjoy/internal/gi;->f:Ljava/lang/Boolean;

    .line 1134
    :cond_1
    iget-object v2, p1, Lcom/tapjoy/internal/gi;->a:Ljava/lang/String;

    if-nez v2, :cond_2

    const-string v2, "cgdpr"

    const-string v3, ""

    .line 1135
    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p1, Lcom/tapjoy/internal/gi;->a:Ljava/lang/String;

    .line 1138
    :cond_2
    iget-object v2, p1, Lcom/tapjoy/internal/gi;->g:Ljava/lang/Boolean;

    if-nez v2, :cond_3

    const-string v2, "below_consent_age"

    invoke-interface {v0, v2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "below_consent_age"

    .line 1139
    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, p1, Lcom/tapjoy/internal/gi;->g:Ljava/lang/Boolean;

    .line 1142
    :cond_3
    iget-object v2, p1, Lcom/tapjoy/internal/gi;->b:Ljava/lang/String;

    if-nez v2, :cond_4

    const-string v2, "us_privacy"

    const-string v3, ""

    .line 1143
    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/tapjoy/internal/gi;->b:Ljava/lang/String;

    .line 47
    :cond_4
    iget-boolean p1, p0, Lcom/tapjoy/internal/gi;->c:Z

    if-eqz p1, :cond_8

    .line 49
    iput-boolean v1, p0, Lcom/tapjoy/internal/gi;->c:Z

    .line 2031
    sget-object p1, Lcom/tapjoy/internal/gi;->e:Lcom/tapjoy/internal/gi;

    .line 2103
    iget-object v0, p1, Lcom/tapjoy/internal/gi;->h:Landroid/content/Context;

    if-eqz v0, :cond_8

    .line 2105
    iget-object v0, p1, Lcom/tapjoy/internal/gi;->f:Ljava/lang/Boolean;

    if-eqz v0, :cond_5

    .line 2106
    invoke-direct {p1}, Lcom/tapjoy/internal/gi;->d()Z

    .line 2109
    :cond_5
    iget-object v0, p1, Lcom/tapjoy/internal/gi;->a:Ljava/lang/String;

    if-eqz v0, :cond_6

    .line 2110
    invoke-direct {p1}, Lcom/tapjoy/internal/gi;->e()Z

    .line 2113
    :cond_6
    iget-object v0, p1, Lcom/tapjoy/internal/gi;->g:Ljava/lang/Boolean;

    if-eqz v0, :cond_7

    .line 2114
    invoke-direct {p1}, Lcom/tapjoy/internal/gi;->f()Z

    .line 2117
    :cond_7
    iget-object v0, p1, Lcom/tapjoy/internal/gi;->b:Ljava/lang/String;

    if-eqz v0, :cond_8

    .line 2118
    invoke-virtual {p1}, Lcom/tapjoy/internal/gi;->c()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 52
    :cond_8
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final a(Ljava/lang/String;)V
    .locals 1

    .line 66
    invoke-static {p1}, Lcom/tapjoy/internal/ag;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 70
    :cond_0
    iput-object p1, p0, Lcom/tapjoy/internal/gi;->a:Ljava/lang/String;

    .line 72
    invoke-direct {p0}, Lcom/tapjoy/internal/gi;->e()Z

    move-result p1

    if-nez p1, :cond_1

    const/4 p1, 0x1

    .line 73
    iput-boolean p1, p0, Lcom/tapjoy/internal/gi;->c:Z

    :cond_1
    return-void
.end method

.method public final a(Z)V
    .locals 0

    .line 56
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/tapjoy/internal/gi;->f:Ljava/lang/Boolean;

    .line 59
    invoke-direct {p0}, Lcom/tapjoy/internal/gi;->d()Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    .line 60
    iput-boolean p1, p0, Lcom/tapjoy/internal/gi;->c:Z

    :cond_0
    return-void
.end method

.method public final b()Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 154
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 156
    iget-object v1, p0, Lcom/tapjoy/internal/gi;->f:Ljava/lang/Boolean;

    const-string v2, "1"

    const-string v3, "0"

    const/4 v4, 0x1

    if-eqz v1, :cond_1

    .line 157
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v1, v2

    goto :goto_0

    :cond_0
    move-object v1, v3

    :goto_0
    const-string v5, "gdpr"

    .line 158
    invoke-static {v0, v5, v1, v4}, Lcom/tapjoy/TapjoyUtil;->safePut(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 161
    :cond_1
    iget-object v1, p0, Lcom/tapjoy/internal/gi;->a:Ljava/lang/String;

    invoke-static {v1}, Lcom/tapjoy/internal/ag;->a(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 162
    iget-object v1, p0, Lcom/tapjoy/internal/gi;->a:Ljava/lang/String;

    const-string v5, "cgdpr"

    invoke-static {v0, v5, v1, v4}, Lcom/tapjoy/TapjoyUtil;->safePut(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 165
    :cond_2
    iget-object v1, p0, Lcom/tapjoy/internal/gi;->g:Ljava/lang/Boolean;

    if-eqz v1, :cond_4

    .line 166
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_1

    :cond_3
    move-object v2, v3

    :goto_1
    const-string v1, "below_consent_age"

    .line 167
    invoke-static {v0, v1, v2, v4}, Lcom/tapjoy/TapjoyUtil;->safePut(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 169
    :cond_4
    iget-object v1, p0, Lcom/tapjoy/internal/gi;->b:Ljava/lang/String;

    invoke-static {v1}, Lcom/tapjoy/internal/ag;->a(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 170
    iget-object v1, p0, Lcom/tapjoy/internal/gi;->b:Ljava/lang/String;

    const-string v2, "us_privacy"

    invoke-static {v0, v2, v1, v4}, Lcom/tapjoy/TapjoyUtil;->safePut(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_5
    return-object v0
.end method

.method public final b(Z)V
    .locals 0

    .line 183
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/tapjoy/internal/gi;->g:Ljava/lang/Boolean;

    .line 185
    invoke-direct {p0}, Lcom/tapjoy/internal/gi;->f()Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    .line 186
    iput-boolean p1, p0, Lcom/tapjoy/internal/gi;->c:Z

    :cond_0
    return-void
.end method

.method public final c()Z
    .locals 3

    .line 223
    iget-object v0, p0, Lcom/tapjoy/internal/gi;->h:Landroid/content/Context;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string v2, "tjcPrefrences"

    .line 224
    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 225
    iget-object v1, p0, Lcom/tapjoy/internal/gi;->b:Ljava/lang/String;

    const-string v2, "us_privacy"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 226
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    const/4 v0, 0x1

    return v0

    :cond_0
    return v1
.end method
