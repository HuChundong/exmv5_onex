.class public Lcom/scalado/jni/JniLibLoaderSettings;
.super Ljava/lang/Object;
.source "JniLibLoaderSettings.java"

# interfaces
.implements Lcom/scalado/jni/LibLoaderSettings;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public configurationFilename()Ljava/lang/String;
    .locals 1

    const-string v0, "test.cfg"

    return-object v0
.end method

.method public configurationKeyword()Ljava/lang/String;
    .locals 1

    const-string v0, "DllPath"

    return-object v0
.end method

.method public libName()Ljava/lang/String;
    .locals 1

    const-string v0, "capsjava"

    return-object v0
.end method

.method public libPath()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method
