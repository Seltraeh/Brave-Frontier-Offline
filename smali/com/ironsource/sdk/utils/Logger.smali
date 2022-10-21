.class public Lcom/ironsource/sdk/utils/Logger;
.super Ljava/lang/Object;
.source "Logger.java"


# static fields
.field private static enableLogging:Z


# direct methods
.method public static d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 121
    sget-boolean v0, Lcom/ironsource/sdk/utils/Logger;->enableLogging:Z

    if-eqz v0, :cond_0

    .line 122
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 61
    sget-boolean v0, Lcom/ironsource/sdk/utils/Logger;->enableLogging:Z

    if-eqz v0, :cond_0

    .line 62
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static enableLogging(I)V
    .locals 1

    .line 19
    sget-object v0, Lcom/ironsource/sdk/data/ISNEnums$DebugMode;->MODE_0:Lcom/ironsource/sdk/data/ISNEnums$DebugMode;

    invoke-virtual {v0}, Lcom/ironsource/sdk/data/ISNEnums$DebugMode;->getValue()I

    move-result v0

    if-eq v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    sput-boolean p0, Lcom/ironsource/sdk/utils/Logger;->enableLogging:Z

    return-void
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 31
    sget-boolean v0, Lcom/ironsource/sdk/utils/Logger;->enableLogging:Z

    if-eqz v0, :cond_0

    .line 32
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method
