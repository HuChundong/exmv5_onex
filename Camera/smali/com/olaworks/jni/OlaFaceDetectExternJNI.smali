.class public Lcom/olaworks/jni/OlaFaceDetectExternJNI;
.super Ljava/lang/Object;
.source "OlaFaceDetectExternJNI.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "OlaFaceDetectorJNI"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "OlaFaceDetectorJNI"

    const-string v1, "Howard loadLibrary"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/olaworks/define/Ola_Genernal$Ola_JniLibrary;->loadLibrary()V

    const-string v0, "OlaFaceDetectorJNI"

    const-string v1, "Howard loadLibrary Done"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native create()I
.end method

.method public static native destroy()I
.end method

.method public static native getProcessInfo(Lcom/olaworks/datastruct/Ola_FaceDetectExternInfo;)I
.end method

.method public static native initialize()I
.end method

.method public static native processImageBitmap(Landroid/graphics/Bitmap;I)I
.end method

.method public static native processPreviewBitmap(Landroid/graphics/Bitmap;I)I
.end method
