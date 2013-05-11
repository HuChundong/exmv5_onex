.class public Lcom/htc/haptic/HapticDevice;
.super Ljava/lang/Object;
.source "HapticDevice.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final PRIORITY_ALARM:I = 0xd
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final PRIORITY_DEFAULT:I = 0x0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final PRIORITY_EFFECT:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final PRIORITY_FEEDBACK:I = 0x2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final PRIORITY_NORMAL_MAX:I = 0xf
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final PRIORITY_NORMAL_MIN:I = 0x0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final PRIORITY_OEM_MAX:I = 0xf
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final PRIORITY_RINGTONE:I = 0xe
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final STATE_ATTACHED:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final STATE_BUSY:I = 0x2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createHapticDevice(Landroid/content/Context;)Lcom/htc/haptic/HapticDevice;
    .locals 1
    .parameter "context"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 75
    const/4 v0, 0x0

    return-object v0
.end method

.method public static createOemHapticDevice(Landroid/content/Context;)Lcom/htc/haptic/HapticDevice;
    .locals 1
    .parameter "context"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 83
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getDeviceCount()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 272
    const/4 v0, -0x1

    return v0
.end method

.method public static getState(I)I
    .locals 1
    .parameter "deviceIndex"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 282
    const/4 v0, -0x1

    return v0
.end method

.method public static isHapticSupported()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 67
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public declared-synchronized close()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 251
    monitor-enter p0

    monitor-exit p0

    return-void
.end method

.method public createHapticEffectPlayer(Lcom/htc/haptic/HapticEffectProcessor;)Lcom/htc/haptic/HapticEffectPlayer;
    .locals 1
    .parameter "effectProcessor"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 244
    const/4 v0, 0x0

    return-object v0
.end method

.method public createHapticEffectPlayer(Ljava/lang/String;)Lcom/htc/haptic/HapticEffectPlayer;
    .locals 1
    .parameter "filename"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/haptic/HapticEffectException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 228
    const/4 v0, 0x0

    return-object v0
.end method

.method public createHapticEffectPlayer([B)Lcom/htc/haptic/HapticEffectPlayer;
    .locals 1
    .parameter "ivtRawData"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 236
    const/4 v0, 0x0

    return-object v0
.end method

.method protected finalize()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 263
    return-void
.end method

.method public getCapabilityBool(II)Z
    .locals 1
    .parameter "deviceIndex"
    .parameter "nDevCapType"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 118
    const/4 v0, 0x0

    return v0
.end method

.method public getCapabilityInt32(II)I
    .locals 1
    .parameter "deviceIndex"
    .parameter "nDevCapType"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 128
    const/4 v0, -0x1

    return v0
.end method

.method public getCapabilityString(II)Ljava/lang/String;
    .locals 1
    .parameter "deviceIndex"
    .parameter "nDevCapType"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 138
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPriority()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 100
    const/4 v0, -0x1

    return v0
.end method

.method public getPropertyBool(I)Z
    .locals 1
    .parameter "nDevPropType"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 170
    const/4 v0, 0x0

    return v0
.end method

.method public getPropertyInt32(I)I
    .locals 1
    .parameter "nDevPropType"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 177
    const/4 v0, -0x1

    return v0
.end method

.method public getPropertyString(I)Ljava/lang/String;
    .locals 1
    .parameter "nDevPropType"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 185
    const/4 v0, 0x0

    return-object v0
.end method

.method public hasOemPriority()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 92
    const/4 v0, 0x0

    return v0
.end method

.method public isClosed()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 258
    const/4 v0, 0x1

    return v0
.end method

.method public playEffect(Lcom/htc/haptic/HapticEffectProcessor;)V
    .locals 0
    .parameter "processor"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 214
    return-void
.end method

.method public playEffect(Lcom/htc/haptic/HapticEffectProcessor;I)V
    .locals 0
    .parameter "processor"
    .parameter "effectIndex"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 221
    return-void
.end method

.method public playEffect([B)V
    .locals 0
    .parameter "ivtRawData"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 200
    return-void
.end method

.method public playEffect([BI)V
    .locals 0
    .parameter "ivtRawData"
    .parameter "effectIndex"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 207
    return-void
.end method

.method public setPriority(I)Z
    .locals 1
    .parameter "priority"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 108
    const/4 v0, 0x0

    return v0
.end method

.method public setProperty(II)Z
    .locals 1
    .parameter "nDevPropType"
    .parameter "value"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 154
    const/4 v0, 0x0

    return v0
.end method

.method public setProperty(ILjava/lang/String;)Z
    .locals 1
    .parameter "nDevPropType"
    .parameter "value"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 162
    const/4 v0, 0x0

    return v0
.end method

.method public setProperty(IZ)Z
    .locals 1
    .parameter "nDevPropType"
    .parameter "value"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 146
    const/4 v0, 0x0

    return v0
.end method

.method public stopAllPlayingEffects()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 193
    return-void
.end method
