.class public Lcom/vungle/warren/CleverCacheSettings;
.super Ljava/lang/Object;
.source "CleverCacheSettings.java"


# static fields
.field static final DEFAULT_ENABLED:Z = true

.field static final DEFAULT_TIMESTAMP:J = -0x1L

.field static final KEY_CLEVER_CACHE:Ljava/lang/String; = "clever_cache"

.field static final KEY_ENABLED:Ljava/lang/String; = "enabled"

.field static final KEY_TIMESTAMP:Ljava/lang/String; = "clear_shared_cache_timestamp"


# instance fields
.field private final enabled:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "enabled"
    .end annotation
.end field

.field private final timestamp:J
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "clear_shared_cache_timestamp"
    .end annotation
.end field


# direct methods
.method private constructor <init>(ZJ)V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-boolean p1, p0, Lcom/vungle/warren/CleverCacheSettings;->enabled:Z

    .line 30
    iput-wide p2, p0, Lcom/vungle/warren/CleverCacheSettings;->timestamp:J

    return-void
.end method

.method static deserializeFromString(Ljava/lang/String;)Lcom/vungle/warren/CleverCacheSettings;
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 74
    :cond_0
    :try_start_0
    new-instance v1, Lcom/google/gson/GsonBuilder;

    invoke-direct {v1}, Lcom/google/gson/GsonBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/google/gson/GsonBuilder;->create()Lcom/google/gson/Gson;

    move-result-object v1

    const-class v2, Lcom/google/gson/JsonObject;

    invoke-virtual {v1, p0, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/gson/JsonObject;
    :try_end_0
    .catch Lcom/google/gson/JsonSyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 79
    invoke-static {p0}, Lcom/vungle/warren/CleverCacheSettings;->fromJson(Lcom/google/gson/JsonObject;)Lcom/vungle/warren/CleverCacheSettings;

    move-result-object p0

    return-object p0

    :catch_0
    return-object v0
.end method

.method public static fromJson(Lcom/google/gson/JsonObject;)Lcom/vungle/warren/CleverCacheSettings;
    .locals 5

    const-string v0, "clear_shared_cache_timestamp"

    const-string v1, "clever_cache"

    .line 41
    invoke-static {p0, v1}, Lcom/vungle/warren/model/JsonUtil;->hasNonNull(Lcom/google/gson/JsonElement;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-wide/16 v2, -0x1

    const/4 v4, 0x1

    .line 47
    invoke-virtual {p0, v1}, Lcom/google/gson/JsonObject;->getAsJsonObject(Ljava/lang/String;)Lcom/google/gson/JsonObject;

    move-result-object p0

    .line 49
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 50
    invoke-virtual {p0, v0}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsLong()J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-wide v2, v0

    goto :goto_0

    :catch_0
    nop

    :cond_1
    :goto_0
    const-string v0, "enabled"

    .line 56
    invoke-virtual {p0, v0}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 57
    invoke-virtual {p0, v0}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object p0

    .line 58
    invoke-virtual {p0}, Lcom/google/gson/JsonElement;->isJsonPrimitive()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "false"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2

    const/4 v4, 0x0

    .line 63
    :cond_2
    new-instance p0, Lcom/vungle/warren/CleverCacheSettings;

    invoke-direct {p0, v4, v2, v3}, Lcom/vungle/warren/CleverCacheSettings;-><init>(ZJ)V

    return-object p0
.end method

.method static getDefault()Lcom/vungle/warren/CleverCacheSettings;
    .locals 4

    .line 83
    new-instance v0, Lcom/vungle/warren/CleverCacheSettings;

    const/4 v1, 0x1

    const-wide/16 v2, -0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/vungle/warren/CleverCacheSettings;-><init>(ZJ)V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_4

    .line 97
    const-class v2, Lcom/vungle/warren/CleverCacheSettings;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 99
    :cond_1
    check-cast p1, Lcom/vungle/warren/CleverCacheSettings;

    .line 101
    iget-boolean v2, p0, Lcom/vungle/warren/CleverCacheSettings;->enabled:Z

    iget-boolean v3, p1, Lcom/vungle/warren/CleverCacheSettings;->enabled:Z

    if-eq v2, v3, :cond_2

    return v1

    .line 102
    :cond_2
    iget-wide v2, p0, Lcom/vungle/warren/CleverCacheSettings;->timestamp:J

    iget-wide v4, p1, Lcom/vungle/warren/CleverCacheSettings;->timestamp:J

    cmp-long p1, v2, v4

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_4
    :goto_1
    return v1
.end method

.method public getTimestamp()J
    .locals 2

    .line 91
    iget-wide v0, p0, Lcom/vungle/warren/CleverCacheSettings;->timestamp:J

    return-wide v0
.end method

.method public hashCode()I
    .locals 5

    .line 107
    iget-boolean v0, p0, Lcom/vungle/warren/CleverCacheSettings;->enabled:Z

    mul-int/lit8 v0, v0, 0x1f

    .line 108
    iget-wide v1, p0, Lcom/vungle/warren/CleverCacheSettings;->timestamp:J

    const/16 v3, 0x20

    ushr-long v3, v1, v3

    xor-long/2addr v1, v3

    long-to-int v2, v1

    add-int/2addr v0, v2

    return v0
.end method

.method public isEnabled()Z
    .locals 1

    .line 87
    iget-boolean v0, p0, Lcom/vungle/warren/CleverCacheSettings;->enabled:Z

    return v0
.end method

.method public serializeToString()Ljava/lang/String;
    .locals 3

    .line 34
    new-instance v0, Lcom/google/gson/JsonObject;

    invoke-direct {v0}, Lcom/google/gson/JsonObject;-><init>()V

    .line 35
    new-instance v1, Lcom/google/gson/GsonBuilder;

    invoke-direct {v1}, Lcom/google/gson/GsonBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/google/gson/GsonBuilder;->create()Lcom/google/gson/Gson;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/google/gson/Gson;->toJsonTree(Ljava/lang/Object;)Lcom/google/gson/JsonElement;

    move-result-object v1

    const-string v2, "clever_cache"

    invoke-virtual {v0, v2, v1}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    .line 36
    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
