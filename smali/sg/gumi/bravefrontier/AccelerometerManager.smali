.class public Lsg/gumi/bravefrontier/AccelerometerManager;
.super Ljava/lang/Object;
.source "AccelerometerManager.java"


# static fields
.field private static aContext:Landroid/content/Context; = null

.field private static interval:I = 0xc8

.field private static listener:Lsg/gumi/bravefrontier/AccelerometerListener; = null

.field private static running:Z = false

.field private static sensor:Landroid/hardware/Sensor; = null

.field private static sensorEventListener:Landroid/hardware/SensorEventListener; = null

.field private static sensorManager:Landroid/hardware/SensorManager; = null

.field private static supported:Ljava/lang/Boolean; = null

.field private static threshold:F = 20.0f


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 139
    new-instance v0, Lsg/gumi/bravefrontier/AccelerometerManager$1;

    invoke-direct {v0}, Lsg/gumi/bravefrontier/AccelerometerManager$1;-><init>()V

    sput-object v0, Lsg/gumi/bravefrontier/AccelerometerManager;->sensorEventListener:Landroid/hardware/SensorEventListener;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()F
    .locals 1

    .line 11
    sget v0, Lsg/gumi/bravefrontier/AccelerometerManager;->threshold:F

    return v0
.end method

.method static synthetic access$100()I
    .locals 1

    .line 11
    sget v0, Lsg/gumi/bravefrontier/AccelerometerManager;->interval:I

    return v0
.end method

.method static synthetic access$200()Lsg/gumi/bravefrontier/AccelerometerListener;
    .locals 1

    .line 11
    sget-object v0, Lsg/gumi/bravefrontier/AccelerometerManager;->listener:Lsg/gumi/bravefrontier/AccelerometerListener;

    return-object v0
.end method

.method public static configure(II)V
    .locals 0

    int-to-float p0, p0

    .line 85
    sput p0, Lsg/gumi/bravefrontier/AccelerometerManager;->threshold:F

    .line 86
    sput p1, Lsg/gumi/bravefrontier/AccelerometerManager;->interval:I

    return-void
.end method

.method public static isListening()Z
    .locals 1

    .line 35
    sget-boolean v0, Lsg/gumi/bravefrontier/AccelerometerManager;->running:Z

    return v0
.end method

.method public static isSupported(Landroid/content/Context;)Z
    .locals 2

    .line 54
    sput-object p0, Lsg/gumi/bravefrontier/AccelerometerManager;->aContext:Landroid/content/Context;

    .line 55
    sget-object v0, Lsg/gumi/bravefrontier/AccelerometerManager;->supported:Ljava/lang/Boolean;

    if-nez v0, :cond_2

    if-eqz p0, :cond_1

    const-string v0, "sensor"

    .line 60
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/hardware/SensorManager;

    sput-object p0, Lsg/gumi/bravefrontier/AccelerometerManager;->sensorManager:Landroid/hardware/SensorManager;

    const/4 v0, 0x1

    .line 63
    invoke-virtual {p0, v0}, Landroid/hardware/SensorManager;->getSensorList(I)Ljava/util/List;

    move-result-object p0

    .line 66
    new-instance v1, Ljava/lang/Boolean;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    if-lez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-direct {v1, v0}, Ljava/lang/Boolean;-><init>(Z)V

    sput-object v1, Lsg/gumi/bravefrontier/AccelerometerManager;->supported:Ljava/lang/Boolean;

    goto :goto_1

    .line 71
    :cond_1
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sput-object p0, Lsg/gumi/bravefrontier/AccelerometerManager;->supported:Ljava/lang/Boolean;

    .line 74
    :cond_2
    :goto_1
    sget-object p0, Lsg/gumi/bravefrontier/AccelerometerManager;->supported:Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public static startListening(Lsg/gumi/bravefrontier/AccelerometerListener;)V
    .locals 4

    .line 97
    sget-object v0, Lsg/gumi/bravefrontier/AccelerometerManager;->aContext:Landroid/content/Context;

    const-string v1, "sensor"

    .line 98
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    sput-object v0, Lsg/gumi/bravefrontier/AccelerometerManager;->sensorManager:Landroid/hardware/SensorManager;

    const/4 v1, 0x1

    .line 101
    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getSensorList(I)Ljava/util/List;

    move-result-object v0

    .line 104
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    const/4 v2, 0x0

    .line 106
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Sensor;

    sput-object v0, Lsg/gumi/bravefrontier/AccelerometerManager;->sensor:Landroid/hardware/Sensor;

    .line 109
    sget-object v2, Lsg/gumi/bravefrontier/AccelerometerManager;->sensorManager:Landroid/hardware/SensorManager;

    sget-object v3, Lsg/gumi/bravefrontier/AccelerometerManager;->sensorEventListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v2, v3, v0, v1}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    move-result v0

    sput-boolean v0, Lsg/gumi/bravefrontier/AccelerometerManager;->running:Z

    .line 113
    sput-object p0, Lsg/gumi/bravefrontier/AccelerometerManager;->listener:Lsg/gumi/bravefrontier/AccelerometerListener;

    :cond_0
    return-void
.end method

.method public static startListening(Lsg/gumi/bravefrontier/AccelerometerListener;II)V
    .locals 0

    .line 132
    invoke-static {p1, p2}, Lsg/gumi/bravefrontier/AccelerometerManager;->configure(II)V

    .line 133
    invoke-static {p0}, Lsg/gumi/bravefrontier/AccelerometerManager;->startListening(Lsg/gumi/bravefrontier/AccelerometerListener;)V

    return-void
.end method

.method public static stopListening()V
    .locals 2

    const/4 v0, 0x0

    .line 42
    sput-boolean v0, Lsg/gumi/bravefrontier/AccelerometerManager;->running:Z

    .line 44
    :try_start_0
    sget-object v0, Lsg/gumi/bravefrontier/AccelerometerManager;->sensorManager:Landroid/hardware/SensorManager;

    if-eqz v0, :cond_0

    sget-object v0, Lsg/gumi/bravefrontier/AccelerometerManager;->sensorEventListener:Landroid/hardware/SensorEventListener;

    if-eqz v0, :cond_0

    .line 45
    sget-object v0, Lsg/gumi/bravefrontier/AccelerometerManager;->sensorManager:Landroid/hardware/SensorManager;

    sget-object v1, Lsg/gumi/bravefrontier/AccelerometerManager;->sensorEventListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method
