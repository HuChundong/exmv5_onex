.class public interface abstract Lcom/android/camera/IAudioManager;
.super Ljava/lang/Object;
.source "IAudioManager.java"


# static fields
.field public static final AUDIOFOCUS_GAIN:I = 0x1

.field public static final AUDIOFOCUS_GAIN_TRANSIENT:I = 0x2

.field public static final AUDIOFOCUS_GAIN_TRANSIENT_MAY_DUCK:I = 0x3

.field public static final STREAM_ALARM:I = 0x4

.field public static final STREAM_DEFAULT:I = -0x1

.field public static final STREAM_RING:I = 0x2

.field public static final STREAM_SYSTEM_ENFORCED:I = 0x7


# virtual methods
.method public abstract abandonAudioFocus()V
.end method

.method public abstract getStreamVolume(I)I
.end method

.method public abstract loadSoundToMemory(I)Lcom/android/camera/Handle;
.end method

.method public abstract playInMemorySound(Lcom/android/camera/Handle;IZ)Lcom/android/camera/Handle;
.end method

.method public abstract requestAudioFocus()V
.end method

.method public abstract requestAudioFocus(I)V
.end method

.method public abstract restoreAudioStreamVolume()V
.end method

.method public abstract setParameters(Ljava/lang/String;)V
.end method

.method public abstract stopInMemorySound(Lcom/android/camera/Handle;)V
.end method
