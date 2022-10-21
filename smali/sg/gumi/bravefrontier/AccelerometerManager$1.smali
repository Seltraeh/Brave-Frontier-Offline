.class Lsg/gumi/bravefrontier/AccelerometerManager$1;
.super Ljava/lang/Object;
.source "AccelerometerManager.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsg/gumi/bravefrontier/AccelerometerManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private force:F

.field private lastShake:J

.field private lastUpdate:J

.field private lastX:F

.field private lastY:F

.field private lastZ:F

.field private now:J

.field private timeDiff:J

.field private x:F

.field private y:F

.field private z:F


# direct methods
.method constructor <init>()V
    .locals 2

    .line 140
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 142
    iput-wide v0, p0, Lsg/gumi/bravefrontier/AccelerometerManager$1;->now:J

    .line 143
    iput-wide v0, p0, Lsg/gumi/bravefrontier/AccelerometerManager$1;->timeDiff:J

    .line 144
    iput-wide v0, p0, Lsg/gumi/bravefrontier/AccelerometerManager$1;->lastUpdate:J

    .line 145
    iput-wide v0, p0, Lsg/gumi/bravefrontier/AccelerometerManager$1;->lastShake:J

    const/4 v0, 0x0

    .line 147
    iput v0, p0, Lsg/gumi/bravefrontier/AccelerometerManager$1;->x:F

    .line 148
    iput v0, p0, Lsg/gumi/bravefrontier/AccelerometerManager$1;->y:F

    .line 149
    iput v0, p0, Lsg/gumi/bravefrontier/AccelerometerManager$1;->z:F

    .line 150
    iput v0, p0, Lsg/gumi/bravefrontier/AccelerometerManager$1;->lastX:F

    .line 151
    iput v0, p0, Lsg/gumi/bravefrontier/AccelerometerManager$1;->lastY:F

    .line 152
    iput v0, p0, Lsg/gumi/bravefrontier/AccelerometerManager$1;->lastZ:F

    .line 153
    iput v0, p0, Lsg/gumi/bravefrontier/AccelerometerManager$1;->force:F

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 9

    .line 163
    :try_start_0
    iget-wide v0, p1, Landroid/hardware/SensorEvent;->timestamp:J

    iput-wide v0, p0, Lsg/gumi/bravefrontier/AccelerometerManager$1;->now:J

    .line 165
    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v3, 0x0

    aget v2, v2, v3

    iput v2, p0, Lsg/gumi/bravefrontier/AccelerometerManager$1;->x:F

    .line 166
    iget-object v3, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v4, 0x1

    aget v3, v3, v4

    iput v3, p0, Lsg/gumi/bravefrontier/AccelerometerManager$1;->y:F

    .line 167
    iget-object p1, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v4, 0x2

    aget p1, p1, v4

    iput p1, p0, Lsg/gumi/bravefrontier/AccelerometerManager$1;->z:F

    .line 171
    iget-wide v4, p0, Lsg/gumi/bravefrontier/AccelerometerManager$1;->lastUpdate:J

    const-wide/16 v6, 0x0

    cmp-long v8, v4, v6

    if-nez v8, :cond_0

    .line 172
    iput-wide v0, p0, Lsg/gumi/bravefrontier/AccelerometerManager$1;->lastUpdate:J

    .line 173
    iput-wide v0, p0, Lsg/gumi/bravefrontier/AccelerometerManager$1;->lastShake:J

    .line 174
    iput v2, p0, Lsg/gumi/bravefrontier/AccelerometerManager$1;->lastX:F

    .line 175
    iput v3, p0, Lsg/gumi/bravefrontier/AccelerometerManager$1;->lastY:F

    .line 176
    iput p1, p0, Lsg/gumi/bravefrontier/AccelerometerManager$1;->lastZ:F

    goto :goto_0

    .line 179
    :cond_0
    iget-wide v4, p0, Lsg/gumi/bravefrontier/AccelerometerManager$1;->lastUpdate:J

    sub-long/2addr v0, v4

    iput-wide v0, p0, Lsg/gumi/bravefrontier/AccelerometerManager$1;->timeDiff:J

    cmp-long v4, v0, v6

    if-lez v4, :cond_3

    add-float/2addr v2, v3

    add-float/2addr v2, p1

    .line 185
    iget p1, p0, Lsg/gumi/bravefrontier/AccelerometerManager$1;->lastX:F

    sub-float/2addr v2, p1

    iget p1, p0, Lsg/gumi/bravefrontier/AccelerometerManager$1;->lastY:F

    sub-float/2addr v2, p1

    iget p1, p0, Lsg/gumi/bravefrontier/AccelerometerManager$1;->lastZ:F

    sub-float/2addr v2, p1

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iput p1, p0, Lsg/gumi/bravefrontier/AccelerometerManager$1;->force:F

    .line 187
    invoke-static {}, Lsg/gumi/bravefrontier/AccelerometerManager;->access$000()F

    move-result v0

    invoke-static {p1, v0}, Ljava/lang/Float;->compare(FF)I

    move-result p1

    if-lez p1, :cond_2

    .line 191
    iget-wide v0, p0, Lsg/gumi/bravefrontier/AccelerometerManager$1;->now:J

    iget-wide v2, p0, Lsg/gumi/bravefrontier/AccelerometerManager$1;->lastShake:J

    sub-long/2addr v0, v2

    invoke-static {}, Lsg/gumi/bravefrontier/AccelerometerManager;->access$100()I

    move-result p1

    int-to-long v2, p1

    cmp-long p1, v0, v2

    if-ltz p1, :cond_1

    .line 194
    invoke-static {}, Lsg/gumi/bravefrontier/AccelerometerManager;->access$200()Lsg/gumi/bravefrontier/AccelerometerListener;

    move-result-object p1

    iget v0, p0, Lsg/gumi/bravefrontier/AccelerometerManager$1;->force:F

    invoke-interface {p1, v0}, Lsg/gumi/bravefrontier/AccelerometerListener;->onShake(F)V

    .line 200
    :cond_1
    iget-wide v0, p0, Lsg/gumi/bravefrontier/AccelerometerManager$1;->now:J

    iput-wide v0, p0, Lsg/gumi/bravefrontier/AccelerometerManager$1;->lastShake:J

    .line 202
    :cond_2
    iget p1, p0, Lsg/gumi/bravefrontier/AccelerometerManager$1;->x:F

    iput p1, p0, Lsg/gumi/bravefrontier/AccelerometerManager$1;->lastX:F

    .line 203
    iget p1, p0, Lsg/gumi/bravefrontier/AccelerometerManager$1;->y:F

    iput p1, p0, Lsg/gumi/bravefrontier/AccelerometerManager$1;->lastY:F

    .line 204
    iget p1, p0, Lsg/gumi/bravefrontier/AccelerometerManager$1;->z:F

    iput p1, p0, Lsg/gumi/bravefrontier/AccelerometerManager$1;->lastZ:F

    .line 205
    iget-wide v0, p0, Lsg/gumi/bravefrontier/AccelerometerManager$1;->now:J

    iput-wide v0, p0, Lsg/gumi/bravefrontier/AccelerometerManager$1;->lastUpdate:J

    .line 213
    :cond_3
    :goto_0
    invoke-static {}, Lsg/gumi/bravefrontier/AccelerometerManager;->access$200()Lsg/gumi/bravefrontier/AccelerometerListener;

    move-result-object p1

    iget v0, p0, Lsg/gumi/bravefrontier/AccelerometerManager$1;->x:F

    iget v1, p0, Lsg/gumi/bravefrontier/AccelerometerManager$1;->y:F

    iget v2, p0, Lsg/gumi/bravefrontier/AccelerometerManager$1;->z:F

    invoke-interface {p1, v0, v1, v2}, Lsg/gumi/bravefrontier/AccelerometerListener;->onAccelerationChanged(FFF)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method
