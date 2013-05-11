.class public final Lcom/android/camera/effect/RealtimeEffect;
.super Ljava/lang/Object;
.source "RealtimeEffect.java"


# static fields
.field public static final CHANNEL_BLUE:I = 0x3

.field public static final CHANNEL_GREEN:I = 0x2

.field public static final CHANNEL_INTENSITY:I = 0x4

.field public static final CHANNEL_RED:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native channelFilter(Ljava/nio/ByteBuffer;IIILjava/nio/ByteBuffer;I)Z
.end method
