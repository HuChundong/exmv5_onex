.class public Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;
.super Ljava/lang/Object;
.source "DeviceStorageManager.java"


# static fields
.field public static final BUCKET_ID_EXTERNAL_STORAGE:Ljava/lang/String; = null

.field public static final BUCKET_ID_PHONE_STORAGE:Ljava/lang/String; = null

.field public static final BUCKET_ID_REMOVABLE_STORAGE:Ljava/lang/String; = null

.field public static final BUCKET_ID_USB_STORAGE:Ljava/lang/String; = null

.field public static final FOLDER_CAMERA:Ljava/lang/String; = "/dcim"

.field public static final FOLDER_DOWNLOAD:Ljava/lang/String; = "/download"

.field public static final FOLDER_DOWNLOADS:Ljava/lang/String; = "/downloads"

.field public static final FOLDER_SCRIBBLES:Ljava/lang/String; = "/htcscribbles"

.field public static final FOLDER_THUMBNAIL:Ljava/lang/String; = "/Android/data/com.htc.album/.thumbnails/"

.field private static LOG_TAG:Ljava/lang/String; = null

.field private static final m_bSupportExternalStorage:Z = true

.field private static final m_bSupportInternalStorage:Z = true

.field private static final m_bSupportPhoneStorage:Z

.field private static final m_bSupportRemovableStorage:Z

.field private static final m_bSupportUsbStorage:Z

.field private static final m_szDataDirectoryPath:Ljava/lang/String;

.field private static final m_szDefaultStoragePath:Ljava/lang/String;

.field private static m_szExternalCameraPath:Ljava/lang/String;

.field private static m_szExternalDownloadPath:Ljava/lang/String;

.field private static m_szExternalDownloadsPath:Ljava/lang/String;

.field private static m_szExternalScribblesPath:Ljava/lang/String;

.field private static final m_szExternalStoragePath:Ljava/lang/String;

.field private static m_szExternalStorageState:Ljava/lang/String;

.field private static m_szExternalThumbnailPath:Ljava/lang/String;

.field private static m_szPhoneCameraPath:Ljava/lang/String;

.field private static m_szPhoneDownloadPath:Ljava/lang/String;

.field private static m_szPhoneDownloadsPath:Ljava/lang/String;

.field private static m_szPhoneScribblesPath:Ljava/lang/String;

.field private static final m_szPhoneStoragePath:Ljava/lang/String;

.field private static m_szPhoneStorageState:Ljava/lang/String;

.field private static m_szPhoneThumbnailPath:Ljava/lang/String;

.field private static m_szRemovableCameraPath:Ljava/lang/String;

.field private static m_szRemovableDownloadPath:Ljava/lang/String;

.field private static m_szRemovableDownloadsPath:Ljava/lang/String;

.field private static m_szRemovableScribblesPath:Ljava/lang/String;

.field private static final m_szRemovableStoragePath:Ljava/lang/String;

.field private static m_szRemovableStorageState:Ljava/lang/String;

.field private static m_szRemovableThumbnailPath:Ljava/lang/String;

.field private static m_szUsbCameraPath:Ljava/lang/String;

.field private static m_szUsbDownloadPath:Ljava/lang/String;

.field private static m_szUsbDownloadsPath:Ljava/lang/String;

.field private static m_szUsbScribblesPath:Ljava/lang/String;

.field private static final m_szUsbStoragePath:Ljava/lang/String;

.field private static m_szUsbStorageState:Ljava/lang/String;

.field private static m_szUsbThumbnailPath:Ljava/lang/String;

.field private static final m_uriExternalPhotos:Landroid/net/Uri;

.field private static final m_uriExternalPhotosThumbs:Landroid/net/Uri;

.field private static final m_uriExternalVideos:Landroid/net/Uri;

.field private static final m_uriInternalPhotos:Landroid/net/Uri;

.field private static final m_uriInternalPhotosThumbs:Landroid/net/Uri;

.field private static final m_uriInternalVideos:Landroid/net/Uri;

.field private static final m_uriPhonePhotos:Landroid/net/Uri;

.field private static final m_uriPhonePhotosThumbs:Landroid/net/Uri;

.field private static final m_uriPhoneVideos:Landroid/net/Uri;

.field private static final m_uriRemovablePhotos:Landroid/net/Uri;

.field private static final m_uriRemovablePhotosThumbs:Landroid/net/Uri;

.field private static final m_uriRemovableVideos:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 27
    const-string v0, "DeviceStorageManager"

    sput-object v0, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->LOG_TAG:Ljava/lang/String;

    .line 30
    sget-object v0, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    sput-object v0, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->m_uriExternalPhotos:Landroid/net/Uri;

    .line 31
    sget-object v0, Landroid/provider/MediaStore$Images$Thumbnails;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    sput-object v0, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->m_uriExternalPhotosThumbs:Landroid/net/Uri;

    .line 32
    sget-object v0, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    sput-object v0, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->m_uriExternalVideos:Landroid/net/Uri;

    .line 34
    sput-object v1, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->m_uriPhonePhotos:Landroid/net/Uri;

    .line 35
    sput-object v1, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->m_uriPhonePhotosThumbs:Landroid/net/Uri;

    .line 36
    sput-object v1, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->m_uriPhoneVideos:Landroid/net/Uri;

    .line 38
    sget-object v0, Landroid/provider/MediaStore$Images$Media;->INTERNAL_CONTENT_URI:Landroid/net/Uri;

    sput-object v0, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->m_uriInternalPhotos:Landroid/net/Uri;

    .line 39
    sget-object v0, Landroid/provider/MediaStore$Images$Thumbnails;->INTERNAL_CONTENT_URI:Landroid/net/Uri;

    sput-object v0, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->m_uriInternalPhotosThumbs:Landroid/net/Uri;

    .line 40
    sget-object v0, Landroid/provider/MediaStore$Video$Media;->INTERNAL_CONTENT_URI:Landroid/net/Uri;

    sput-object v0, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->m_uriInternalVideos:Landroid/net/Uri;

    .line 42
    sget-object v0, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->m_uriExternalPhotos:Landroid/net/Uri;

    sput-object v0, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->m_uriRemovablePhotos:Landroid/net/Uri;

    .line 43
    sget-object v0, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->m_uriExternalPhotosThumbs:Landroid/net/Uri;

    sput-object v0, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->m_uriRemovablePhotosThumbs:Landroid/net/Uri;

    .line 44
    sget-object v0, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->m_uriExternalVideos:Landroid/net/Uri;

    sput-object v0, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->m_uriRemovableVideos:Landroid/net/Uri;

    .line 47
    invoke-static {}, Lcom/htc/wrap/android/os/HtcWrapEnvironment;->hasPhoneStorage()Z

    move-result v0

    sput-boolean v0, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->m_bSupportPhoneStorage:Z

    .line 49
    invoke-static {}, Lcom/htc/wrap/android/os/HtcWrapEnvironment;->hasRemovableStorageSlot()Z

    move-result v0

    sput-boolean v0, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->m_bSupportRemovableStorage:Z

    .line 50
    invoke-static {}, Lcom/htc/wrap/android/os/HtcWrapEnvironment;->hasUsbDeviceSlot()Z

    move-result v0

    sput-boolean v0, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->m_bSupportUsbStorage:Z

    .line 52
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->m_szDataDirectoryPath:Ljava/lang/String;

    .line 53
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->m_szExternalStoragePath:Ljava/lang/String;

    .line 54
    invoke-static {}, Lcom/htc/wrap/android/os/HtcWrapEnvironment;->getRemovableStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->m_szRemovableStoragePath:Ljava/lang/String;

    .line 55
    invoke-static {}, Lcom/htc/wrap/android/os/HtcWrapEnvironment;->getPhoneStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->m_szPhoneStoragePath:Ljava/lang/String;

    .line 56
    invoke-static {}, Lcom/htc/wrap/android/os/HtcWrapEnvironment;->getUsbDeviceDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->m_szUsbStoragePath:Ljava/lang/String;

    .line 57
    sget-object v0, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->m_szExternalStoragePath:Ljava/lang/String;

    sput-object v0, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->m_szDefaultStoragePath:Ljava/lang/String;

    .line 60
    sput-object v1, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->m_szExternalThumbnailPath:Ljava/lang/String;

    .line 61
    sput-object v1, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->m_szRemovableThumbnailPath:Ljava/lang/String;

    .line 62
    sput-object v1, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->m_szPhoneThumbnailPath:Ljava/lang/String;

    .line 63
    sput-object v1, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->m_szUsbThumbnailPath:Ljava/lang/String;

    .line 68
    sput-object v1, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->m_szExternalDownloadPath:Ljava/lang/String;

    .line 69
    sput-object v1, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->m_szExternalDownloadsPath:Ljava/lang/String;

    .line 70
    sput-object v1, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->m_szRemovableDownloadPath:Ljava/lang/String;

    .line 71
    sput-object v1, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->m_szRemovableDownloadsPath:Ljava/lang/String;

    .line 72
    sput-object v1, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->m_szPhoneDownloadPath:Ljava/lang/String;

    .line 73
    sput-object v1, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->m_szPhoneDownloadsPath:Ljava/lang/String;

    .line 74
    sput-object v1, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->m_szUsbDownloadPath:Ljava/lang/String;

    .line 75
    sput-object v1, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->m_szUsbDownloadsPath:Ljava/lang/String;

    .line 84
    sput-object v1, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->m_szExternalCameraPath:Ljava/lang/String;

    .line 85
    sput-object v1, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->m_szRemovableCameraPath:Ljava/lang/String;

    .line 86
    sput-object v1, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->m_szPhoneCameraPath:Ljava/lang/String;

    .line 87
    sput-object v1, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->m_szUsbCameraPath:Ljava/lang/String;

    .line 91
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->m_szExternalStoragePath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/htcscribbles"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->m_szExternalScribblesPath:Ljava/lang/String;

    .line 92
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->m_szRemovableStoragePath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/htcscribbles"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->m_szRemovableScribblesPath:Ljava/lang/String;

    .line 93
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->m_szPhoneStoragePath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/htcscribbles"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->m_szPhoneScribblesPath:Ljava/lang/String;

    .line 94
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->m_szUsbStoragePath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/htcscribbles"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->m_szUsbScribblesPath:Ljava/lang/String;

    .line 96
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->m_szExternalStorageState:Ljava/lang/String;

    .line 97
    invoke-static {}, Lcom/htc/wrap/android/os/HtcWrapEnvironment;->getRemovableStorageState()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->m_szRemovableStorageState:Ljava/lang/String;

    .line 98
    invoke-static {}, Lcom/htc/wrap/android/os/HtcWrapEnvironment;->getPhoneStorageState()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->m_szPhoneStorageState:Ljava/lang/String;

    .line 99
    invoke-static {}, Lcom/htc/wrap/android/os/HtcWrapEnvironment;->getUsbDeviceState()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->m_szUsbStorageState:Ljava/lang/String;

    .line 101
    invoke-static {}, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->getExternalStoragePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->BUCKET_ID_EXTERNAL_STORAGE:Ljava/lang/String;

    .line 102
    invoke-static {}, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->getPhoneStoragePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->BUCKET_ID_PHONE_STORAGE:Ljava/lang/String;

    .line 103
    invoke-static {}, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->getRemovableStoragePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->BUCKET_ID_REMOVABLE_STORAGE:Ljava/lang/String;

    .line 104
    invoke-static {}, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->getUsbStoragePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->BUCKET_ID_USB_STORAGE:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addToMonitorMediaConnect(Landroid/content/IntentFilter;)V
    .locals 1
    .parameter "intentFilter"

    .prologue
    .line 995
    if-nez p0, :cond_0

    .line 999
    :goto_0
    return-void

    .line 998
    :cond_0
    const-string v0, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {p0, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static addToMonitorMediaDisconnect(Landroid/content/IntentFilter;)V
    .locals 1
    .parameter "intentFilter"

    .prologue
    .line 982
    if-nez p0, :cond_0

    .line 992
    :goto_0
    return-void

    .line 985
    :cond_0
    const-string v0, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {p0, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 986
    const-string v0, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {p0, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 987
    const-string v0, "android.intent.action.MEDIA_SHARED"

    invoke-virtual {p0, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 988
    const-string v0, "android.intent.action.MEDIA_BAD_REMOVAL"

    invoke-virtual {p0, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 989
    const-string v0, "android.intent.action.MEDIA_NOFS"

    invoke-virtual {p0, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 990
    const-string v0, "android.intent.action.MEDIA_REMOVED"

    invoke-virtual {p0, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 991
    const-string v0, "android.intent.action.MEDIA_UNMOUNTABLE"

    invoke-virtual {p0, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static addToMonitorMediaScan(Landroid/content/IntentFilter;)V
    .locals 1
    .parameter "intentFilter"

    .prologue
    .line 1002
    if-nez p0, :cond_0

    .line 1007
    :goto_0
    return-void

    .line 1005
    :cond_0
    const-string v0, "android.intent.action.MEDIA_SCANNER_STARTED"

    invoke-virtual {p0, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1006
    const-string v0, "android.intent.action.MEDIA_SCANNER_FINISHED"

    invoke-virtual {p0, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static getDataDirectoryPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 184
    sget-object v0, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->m_szDataDirectoryPath:Ljava/lang/String;

    return-object v0
.end method

.method public static getDefaultStoragePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 189
    sget-object v0, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->m_szDefaultStoragePath:Ljava/lang/String;

    return-object v0
.end method

.method public static getExternalPhotosThumbsUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 144
    sget-object v0, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->m_uriExternalPhotosThumbs:Landroid/net/Uri;

    return-object v0
.end method

.method public static getExternalPhotosUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 139
    sget-object v0, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->m_uriExternalPhotos:Landroid/net/Uri;

    return-object v0
.end method

.method public static getExternalStorageCameraPath()Ljava/lang/String;
    .locals 2

    .prologue
    .line 717
    sget-object v1, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->m_szExternalCameraPath:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 719
    sget-object v1, Landroid/os/Environment;->DIRECTORY_DCIM:Ljava/lang/String;

    invoke-static {v1}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 720
    .local v0, path:Ljava/lang/String;
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->m_szExternalCameraPath:Ljava/lang/String;

    .line 723
    :cond_0
    sget-object v1, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->m_szExternalCameraPath:Ljava/lang/String;

    return-object v1
.end method

.method public static getExternalStorageDownloadPath()Ljava/lang/String;
    .locals 2

    .prologue
    .line 728
    sget-object v1, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->m_szExternalDownloadPath:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 730
    sget-object v1, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    invoke-static {v1}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 731
    .local v0, path:Ljava/lang/String;
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->m_szExternalDownloadPath:Ljava/lang/String;

    .line 734
    :cond_0
    sget-object v1, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->m_szExternalDownloadPath:Ljava/lang/String;

    return-object v1
.end method

.method public static getExternalStorageDownloadsPath()Ljava/lang/String;
    .locals 2

    .prologue
    .line 739
    sget-object v0, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->m_szExternalDownloadsPath:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 740
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->getExternalStorageDownloadPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "s"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->m_szExternalDownloadsPath:Ljava/lang/String;

    .line 742
    :cond_0
    sget-object v0, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->m_szExternalDownloadsPath:Ljava/lang/String;

    return-object v0
.end method

.method public static getExternalStoragePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 194
    sget-object v0, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->m_szExternalStoragePath:Ljava/lang/String;

    return-object v0
.end method

.method public static getExternalStorageScribblesPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 214
    sget-object v0, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->m_szExternalScribblesPath:Ljava/lang/String;

    return-object v0
.end method

.method public static getExternalStorageState(Z)Ljava/lang/String;
    .locals 2
    .parameter "bRefresh"

    .prologue
    .line 377
    sget-object v0, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->m_szExternalStorageState:Ljava/lang/String;

    .line 379
    .local v0, state:Ljava/lang/String;
    sget-object v1, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->m_szExternalStorageState:Ljava/lang/String;

    if-eqz v1, :cond_0

    if-eqz p0, :cond_1

    .line 380
    :cond_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->m_szExternalStorageState:Ljava/lang/String;

    .line 381
    :cond_1
    sget-object v0, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->m_szExternalStorageState:Ljava/lang/String;

    .line 383
    return-object v0
.end method

.method public static getExternalStorageState(ZLandroid/content/ContentResolver;)Ljava/lang/String;
    .locals 9
    .parameter "bRefresh"
    .parameter "resolver"

    .prologue
    const/4 v8, 0x0

    const/4 v2, 0x0

    .line 326
    invoke-static {p0}, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->isExternalMediaMounted(Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 328
    invoke-static {}, Landroid/provider/MediaStore;->getMediaScannerUri()Landroid/net/Uri;

    move-result-object v1

    .local v1, uri:Landroid/net/Uri;
    move-object v0, p1

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    .line 329
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 330
    .local v6, cur:Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 332
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 334
    invoke-interface {v6, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 335
    .local v7, media:Ljava/lang/String;
    const-string v0, "mediaTag"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "scanner state "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    const-string v0, "external"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 337
    const-string v0, "checking"

    invoke-static {v0}, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->setExternalStorageState(Ljava/lang/String;)V

    .line 339
    .end local v7           #media:Ljava/lang/String;
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 342
    .end local v1           #uri:Landroid/net/Uri;
    .end local v6           #cur:Landroid/database/Cursor;
    :cond_1
    invoke-static {v8}, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->getExternalStorageState(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getExternalStorageThumbnailPath()Ljava/lang/String;
    .locals 2

    .prologue
    .line 234
    sget-object v0, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->m_szExternalThumbnailPath:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 236
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->getExternalStoragePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/Android/data/com.htc.album/.thumbnails/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->m_szExternalThumbnailPath:Ljava/lang/String;

    .line 239
    :cond_0
    sget-object v0, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->m_szExternalThumbnailPath:Ljava/lang/String;

    return-object v0
.end method

.method public static getExternalVideosUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 149
    sget-object v0, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->m_uriExternalVideos:Landroid/net/Uri;

    return-object v0
.end method

.method public static getInternalPhotosThumbsUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 174
    sget-object v0, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->m_uriInternalPhotosThumbs:Landroid/net/Uri;

    return-object v0
.end method

.method public static getInternalPhotosUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 169
    sget-object v0, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->m_uriInternalPhotos:Landroid/net/Uri;

    return-object v0
.end method

.method public static getInternalStorageState()Ljava/lang/String;
    .locals 5

    .prologue
    .line 388
    const-string v0, "com.htc.album.action.MEMORY_NOT_FILL"

    .line 390
    .local v0, state:Ljava/lang/String;
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getUsableSpace()J

    move-result-wide v1

    const-wide/32 v3, 0x500000

    cmp-long v1, v1, v3

    if-gez v1, :cond_0

    .line 391
    const-string v0, "HtcMemoryChecker_LOW_INTERNAL_MEMORY"

    .line 393
    :cond_0
    return-object v0
.end method

.method public static getInternalVideosUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 179
    sget-object v0, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->m_uriInternalVideos:Landroid/net/Uri;

    return-object v0
.end method

.method public static getPhonePhotosThumbsUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 159
    sget-object v0, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->m_uriPhonePhotosThumbs:Landroid/net/Uri;

    return-object v0
.end method

.method public static getPhonePhotosUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 154
    sget-object v0, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->m_uriPhonePhotos:Landroid/net/Uri;

    return-object v0
.end method

.method public static getPhoneStorageCameraPath()Ljava/lang/String;
    .locals 2

    .prologue
    .line 771
    sget-object v0, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->m_szPhoneCameraPath:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 772
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->getPhoneStoragePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/dcim"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->m_szPhoneCameraPath:Ljava/lang/String;

    .line 774
    :cond_0
    sget-object v0, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->m_szPhoneCameraPath:Ljava/lang/String;

    return-object v0
.end method

.method public static getPhoneStorageDownloadPath()Ljava/lang/String;
    .locals 2

    .prologue
    .line 779
    sget-object v0, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->m_szPhoneDownloadPath:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 780
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->getPhoneStoragePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/download"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->m_szPhoneDownloadPath:Ljava/lang/String;

    .line 782
    :cond_0
    sget-object v0, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->m_szPhoneDownloadPath:Ljava/lang/String;

    return-object v0
.end method

.method public static getPhoneStorageDownloadsPath()Ljava/lang/String;
    .locals 2

    .prologue
    .line 787
    sget-object v0, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->m_szPhoneDownloadsPath:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 788
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->getPhoneStoragePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/downloads"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->m_szPhoneDownloadsPath:Ljava/lang/String;

    .line 790
    :cond_0
    sget-object v0, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->m_szPhoneDownloadsPath:Ljava/lang/String;

    return-object v0
.end method

.method public static getPhoneStoragePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 204
    sget-object v0, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->m_szPhoneStoragePath:Ljava/lang/String;

    return-object v0
.end method

.method public static getPhoneStorageScribblesPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 224
    sget-object v0, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->m_szPhoneScribblesPath:Ljava/lang/String;

    return-object v0
.end method

.method public static getPhoneStorageState(Z)Ljava/lang/String;
    .locals 1
    .parameter "bRefresh"

    .prologue
    .line 313
    sget-object v0, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->m_szPhoneStorageState:Ljava/lang/String;

    if-eqz v0, :cond_0

    if-eqz p0, :cond_1

    .line 314
    :cond_0
    invoke-static {}, Lcom/htc/wrap/android/os/HtcWrapEnvironment;->getPhoneStorageState()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->m_szPhoneStorageState:Ljava/lang/String;

    .line 316
    :cond_1
    sget-object v0, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->m_szPhoneStorageState:Ljava/lang/String;

    return-object v0
.end method

.method public static getPhoneStorageThumbnailPath()Ljava/lang/String;
    .locals 2

    .prologue
    .line 256
    sget-object v0, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->m_szPhoneThumbnailPath:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 258
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->getPhoneStoragePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/Android/data/com.htc.album/.thumbnails/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->m_szPhoneThumbnailPath:Ljava/lang/String;

    .line 261
    :cond_0
    sget-object v0, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->m_szPhoneThumbnailPath:Ljava/lang/String;

    return-object v0
.end method

.method public static getPhoneVideosUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 164
    sget-object v0, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->m_uriPhoneVideos:Landroid/net/Uri;

    return-object v0
.end method

.method public static getRemovableStorageCameraPath()Ljava/lang/String;
    .locals 2

    .prologue
    .line 747
    sget-object v0, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->m_szRemovableCameraPath:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 748
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->getRemovableStoragePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/dcim"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->m_szRemovableCameraPath:Ljava/lang/String;

    .line 750
    :cond_0
    sget-object v0, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->m_szRemovableCameraPath:Ljava/lang/String;

    return-object v0
.end method

.method public static getRemovableStorageDownloadPath()Ljava/lang/String;
    .locals 2

    .prologue
    .line 755
    sget-object v0, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->m_szRemovableDownloadPath:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 756
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->getRemovableStoragePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/download"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->m_szRemovableDownloadPath:Ljava/lang/String;

    .line 758
    :cond_0
    sget-object v0, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->m_szRemovableDownloadPath:Ljava/lang/String;

    return-object v0
.end method

.method public static getRemovableStorageDownloadsPath()Ljava/lang/String;
    .locals 2

    .prologue
    .line 763
    sget-object v0, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->m_szRemovableDownloadsPath:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 764
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->getRemovableStoragePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/downloads"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->m_szRemovableDownloadsPath:Ljava/lang/String;

    .line 766
    :cond_0
    sget-object v0, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->m_szRemovableDownloadsPath:Ljava/lang/String;

    return-object v0
.end method

.method public static getRemovableStoragePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 199
    sget-object v0, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->m_szRemovableStoragePath:Ljava/lang/String;

    return-object v0
.end method

.method public static getRemovableStorageScribblesPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 219
    sget-object v0, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->m_szRemovableScribblesPath:Ljava/lang/String;

    return-object v0
.end method

.method public static getRemovableStorageState(Z)Ljava/lang/String;
    .locals 1
    .parameter "bRefresh"

    .prologue
    .line 304
    sget-object v0, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->m_szRemovableStorageState:Ljava/lang/String;

    if-eqz v0, :cond_0

    if-eqz p0, :cond_1

    .line 305
    :cond_0
    invoke-static {}, Lcom/htc/wrap/android/os/HtcWrapEnvironment;->getRemovableStorageState()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->m_szRemovableStorageState:Ljava/lang/String;

    .line 307
    :cond_1
    sget-object v0, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->m_szRemovableStorageState:Ljava/lang/String;

    return-object v0
.end method

.method public static getRemovableStorageThumbnailPath()Ljava/lang/String;
    .locals 2

    .prologue
    .line 245
    sget-object v0, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->m_szRemovableThumbnailPath:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 247
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->getRemovableStoragePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/Android/data/com.htc.album/.thumbnails/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->m_szRemovableThumbnailPath:Ljava/lang/String;

    .line 250
    :cond_0
    sget-object v0, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->m_szRemovableThumbnailPath:Ljava/lang/String;

    return-object v0
.end method

.method public static getUsbStorageCameraPath()Ljava/lang/String;
    .locals 2

    .prologue
    .line 795
    sget-object v0, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->m_szUsbCameraPath:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 796
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->getUsbStoragePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/dcim"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->m_szUsbCameraPath:Ljava/lang/String;

    .line 798
    :cond_0
    sget-object v0, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->m_szUsbCameraPath:Ljava/lang/String;

    return-object v0
.end method

.method public static getUsbStorageDownloadPath()Ljava/lang/String;
    .locals 2

    .prologue
    .line 803
    sget-object v0, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->m_szUsbDownloadPath:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 804
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->getUsbStoragePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/download"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->m_szUsbDownloadPath:Ljava/lang/String;

    .line 806
    :cond_0
    sget-object v0, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->m_szUsbDownloadPath:Ljava/lang/String;

    return-object v0
.end method

.method public static getUsbStorageDownloadsPath()Ljava/lang/String;
    .locals 2

    .prologue
    .line 811
    sget-object v0, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->m_szUsbDownloadsPath:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 812
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->getUsbStoragePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/downloads"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->m_szPhoneDownloadsPath:Ljava/lang/String;

    .line 814
    :cond_0
    sget-object v0, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->m_szPhoneDownloadsPath:Ljava/lang/String;

    return-object v0
.end method

.method public static getUsbStoragePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 209
    sget-object v0, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->m_szUsbStoragePath:Ljava/lang/String;

    return-object v0
.end method

.method public static getUsbStorageScribblesPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 229
    sget-object v0, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->m_szUsbScribblesPath:Ljava/lang/String;

    return-object v0
.end method

.method public static getUsbStorageState(Z)Ljava/lang/String;
    .locals 2
    .parameter "bRefresh"

    .prologue
    .line 398
    sget-object v0, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->m_szUsbStorageState:Ljava/lang/String;

    .line 400
    .local v0, state:Ljava/lang/String;
    sget-object v1, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->m_szUsbStorageState:Ljava/lang/String;

    if-eqz v1, :cond_0

    if-eqz p0, :cond_1

    .line 401
    :cond_0
    invoke-static {}, Lcom/htc/wrap/android/os/HtcWrapEnvironment;->getUsbDeviceState()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->m_szUsbStorageState:Ljava/lang/String;

    .line 402
    :cond_1
    sget-object v0, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->m_szUsbStorageState:Ljava/lang/String;

    .line 404
    return-object v0
.end method

.method public static getUsbStorageThumbnailPath()Ljava/lang/String;
    .locals 2

    .prologue
    .line 266
    sget-object v0, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->m_szUsbThumbnailPath:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 268
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->getUsbStoragePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/Android/data/com.htc.album/.thumbnails/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->m_szUsbThumbnailPath:Ljava/lang/String;

    .line 271
    :cond_0
    sget-object v0, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->m_szUsbThumbnailPath:Ljava/lang/String;

    return-object v0
.end method

.method private static isActionScannerFinish(Ljava/lang/String;)Z
    .locals 3
    .parameter "action"

    .prologue
    .line 923
    const/4 v0, 0x0

    .line 925
    .local v0, bResult:Z
    if-nez p0, :cond_0

    move v1, v0

    .line 931
    .end local v0           #bResult:Z
    .local v1, bResult:I
    :goto_0
    return v1

    .line 928
    .end local v1           #bResult:I
    .restart local v0       #bResult:Z
    :cond_0
    const-string v2, "android.intent.action.MEDIA_SCANNER_FINISHED"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 929
    const/4 v0, 0x1

    :cond_1
    move v1, v0

    .line 931
    .restart local v1       #bResult:I
    goto :goto_0
.end method

.method private static isActionScannerStart(Ljava/lang/String;)Z
    .locals 3
    .parameter "action"

    .prologue
    .line 911
    const/4 v0, 0x0

    .line 913
    .local v0, bResult:Z
    if-nez p0, :cond_0

    move v1, v0

    .line 919
    .end local v0           #bResult:Z
    .local v1, bResult:I
    :goto_0
    return v1

    .line 916
    .end local v1           #bResult:I
    .restart local v0       #bResult:Z
    :cond_0
    const-string v2, "android.intent.action.MEDIA_SCANNER_STARTED"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 917
    const/4 v0, 0x1

    :cond_1
    move v1, v0

    .line 919
    .restart local v1       #bResult:I
    goto :goto_0
.end method

.method private static isActionStorageConnect(Ljava/lang/String;)Z
    .locals 2
    .parameter "action"

    .prologue
    .line 902
    const/4 v0, 0x0

    .line 904
    .local v0, bResult:Z
    const-string v1, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 905
    const/4 v0, 0x1

    .line 907
    :cond_0
    return v0
.end method

.method private static isActionStorageDisconnect(Ljava/lang/String;)Z
    .locals 2
    .parameter "action"

    .prologue
    .line 884
    const/4 v0, 0x0

    .line 886
    .local v0, bResult:Z
    const-string v1, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "android.intent.action.MEDIA_UNMOUNTABLE"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "android.intent.action.MEDIA_BAD_REMOVAL"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "android.intent.action.MEDIA_NOFS"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "android.intent.action.MEDIA_REMOVED"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "android.intent.action.MEDIA_SHARED"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 895
    :cond_0
    const/4 v0, 0x1

    .line 898
    :cond_1
    return v0
.end method

.method public static isAllStorageReady()Z
    .locals 1

    .prologue
    .line 560
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->isAllStorageReady(Z)Z

    move-result v0

    return v0
.end method

.method public static isAllStorageReady(Z)Z
    .locals 4
    .parameter "requireWriteAccess"

    .prologue
    const/4 v3, 0x1

    .line 565
    const/4 v0, 0x1

    .line 567
    .local v0, bResult:Z
    invoke-static {}, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->isInternalStorageStateError()Z

    move-result v1

    if-ne v3, v1, :cond_1

    .line 569
    sget-object v1, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->LOG_TAG:Ljava/lang/String;

    const-string v2, "[HTCAlbum][DeviceStorageManager][isAllStorageReady]: internal error found..."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 570
    const/4 v0, 0x0

    .line 589
    :cond_0
    :goto_0
    return v0

    .line 572
    :cond_1
    invoke-static {p0}, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->isExternalStorageReady(Z)Z

    move-result v1

    if-nez v1, :cond_0

    .line 574
    sget-object v1, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->LOG_TAG:Ljava/lang/String;

    const-string v2, "[HTCAlbum][DeviceStorageManager][isAllStorageReady]: external error found..."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 575
    const/4 v0, 0x0

    .line 577
    sget-boolean v1, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->m_bSupportPhoneStorage:Z

    if-eqz v1, :cond_2

    invoke-static {p0}, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->isPhoneStorageReady(Z)Z

    move-result v1

    if-ne v1, v3, :cond_2

    .line 579
    const/4 v0, 0x1

    .line 582
    :cond_2
    if-nez v0, :cond_0

    sget-boolean v1, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->m_bSupportUsbStorage:Z

    if-eqz v1, :cond_0

    invoke-static {p0}, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->isUsbStorageReady(Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 584
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static isExternalMediaMounted()Z
    .locals 1

    .prologue
    .line 430
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->isExternalMediaMounted(Z)Z

    move-result v0

    return v0
.end method

.method public static isExternalMediaMounted(Z)Z
    .locals 1
    .parameter "bRefresh"

    .prologue
    .line 424
    invoke-static {p0}, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->getExternalStorageState(Z)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->isStorageMediaMounted(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isExternalStorageReady(Z)Z
    .locals 2
    .parameter "requireWriteAccess"

    .prologue
    .line 609
    const/4 v1, 0x1

    invoke-static {v1}, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->getExternalStorageState(Z)Ljava/lang/String;

    move-result-object v0

    .line 610
    .local v0, szStorageState:Ljava/lang/String;
    invoke-static {}, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->getExternalStorageCameraPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p0, v1}, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->isStorageReady(Ljava/lang/String;ZLjava/lang/String;)Z

    move-result v1

    return v1
.end method

.method public static isExternalStorageStateError(Z)Z
    .locals 1
    .parameter "bRefresh"

    .prologue
    .line 504
    invoke-static {p0}, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->getExternalStorageState(Z)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->isStorageStateError(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isFileInAllDownloads(Ljava/lang/String;)Z
    .locals 3
    .parameter "filepath"

    .prologue
    .line 861
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-gtz v2, :cond_2

    .line 862
    :cond_0
    const/4 v0, 0x0

    .line 877
    :cond_1
    :goto_0
    return v0

    .line 864
    :cond_2
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p0, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    .line 865
    .local v1, path:Ljava/lang/String;
    invoke-static {}, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->getExternalStorageDownloadPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    .line 867
    .local v0, bExist:Z
    if-nez v0, :cond_3

    sget-boolean v2, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->m_bSupportRemovableStorage:Z

    if-eqz v2, :cond_3

    .line 869
    invoke-static {}, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->getRemovableStorageDownloadPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    .line 872
    :cond_3
    if-nez v0, :cond_1

    sget-boolean v2, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->m_bSupportPhoneStorage:Z

    if-eqz v2, :cond_1

    .line 874
    invoke-static {}, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->getPhoneStorageDownloadPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public static isFileInCameraShots(Ljava/lang/String;)Z
    .locals 3
    .parameter "filepath"

    .prologue
    .line 819
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-gtz v2, :cond_2

    .line 820
    :cond_0
    const/4 v0, 0x0

    .line 835
    :cond_1
    :goto_0
    return v0

    .line 822
    :cond_2
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p0, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    .line 823
    .local v1, path:Ljava/lang/String;
    invoke-static {}, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->getExternalStorageCameraPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    .line 825
    .local v0, bExist:Z
    if-nez v0, :cond_3

    sget-boolean v2, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->m_bSupportRemovableStorage:Z

    if-eqz v2, :cond_3

    .line 827
    invoke-static {}, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->getRemovableStorageCameraPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    .line 830
    :cond_3
    if-nez v0, :cond_1

    sget-boolean v2, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->m_bSupportPhoneStorage:Z

    if-eqz v2, :cond_1

    .line 832
    invoke-static {}, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->getPhoneStorageCameraPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public static isFileInScribbles(Ljava/lang/String;)Z
    .locals 3
    .parameter "filepath"

    .prologue
    .line 840
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-gtz v2, :cond_2

    .line 841
    :cond_0
    const/4 v0, 0x0

    .line 856
    :cond_1
    :goto_0
    return v0

    .line 843
    :cond_2
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p0, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    .line 844
    .local v1, path:Ljava/lang/String;
    invoke-static {}, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->getExternalStorageScribblesPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    .line 846
    .local v0, bExist:Z
    if-nez v0, :cond_3

    sget-boolean v2, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->m_bSupportRemovableStorage:Z

    if-eqz v2, :cond_3

    .line 848
    invoke-static {}, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->getRemovableStorageScribblesPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    .line 851
    :cond_3
    if-nez v0, :cond_1

    sget-boolean v2, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->m_bSupportPhoneStorage:Z

    if-eqz v2, :cond_1

    .line 853
    invoke-static {}, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->getPhoneStorageScribblesPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public static isFileOnDifferenceStorage(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 10
    .parameter "path1"
    .parameter "path2"

    .prologue
    .line 679
    const/4 v0, 0x1

    .line 682
    .local v0, bDiff:Z
    invoke-static {p0}, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->isFileOnExternalStorage(Ljava/lang/String;)Z

    move-result v1

    .line 683
    .local v1, isPath1onExternalStorage:Z
    invoke-static {p1}, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->isFileOnExternalStorage(Ljava/lang/String;)Z

    move-result v5

    .line 684
    .local v5, isPath2onExternalStorage:Z
    if-eqz v1, :cond_0

    if-eqz v5, :cond_0

    .line 685
    const/4 v0, 0x0

    .line 688
    :cond_0
    if-eqz v0, :cond_1

    sget-boolean v9, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->m_bSupportRemovableStorage:Z

    if-eqz v9, :cond_1

    .line 690
    invoke-static {p0}, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->isFileOnRemovableStorage(Ljava/lang/String;)Z

    move-result v3

    .line 691
    .local v3, isPath1onRemovableStorage:Z
    invoke-static {p1}, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->isFileOnRemovableStorage(Ljava/lang/String;)Z

    move-result v7

    .line 692
    .local v7, isPath2onRemovableStorage:Z
    if-eqz v3, :cond_1

    if-eqz v7, :cond_1

    .line 693
    const/4 v0, 0x0

    .line 696
    .end local v3           #isPath1onRemovableStorage:Z
    .end local v7           #isPath2onRemovableStorage:Z
    :cond_1
    if-eqz v0, :cond_2

    sget-boolean v9, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->m_bSupportPhoneStorage:Z

    if-eqz v9, :cond_2

    .line 698
    invoke-static {p0}, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->isFileOnPhoneStorage(Ljava/lang/String;)Z

    move-result v2

    .line 699
    .local v2, isPath1onPhoneStorage:Z
    invoke-static {p1}, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->isFileOnPhoneStorage(Ljava/lang/String;)Z

    move-result v6

    .line 700
    .local v6, isPath2onPhoneStorage:Z
    if-eqz v2, :cond_2

    if-eqz v6, :cond_2

    .line 701
    const/4 v0, 0x0

    .line 704
    .end local v2           #isPath1onPhoneStorage:Z
    .end local v6           #isPath2onPhoneStorage:Z
    :cond_2
    if-eqz v0, :cond_3

    sget-boolean v9, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->m_bSupportUsbStorage:Z

    if-eqz v9, :cond_3

    .line 706
    invoke-static {p0}, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->isFileOnUsbStorage(Ljava/lang/String;)Z

    move-result v4

    .line 707
    .local v4, isPath1onUsbStorage:Z
    invoke-static {p1}, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->isFileOnUsbStorage(Ljava/lang/String;)Z

    move-result v8

    .line 708
    .local v8, isPath2onUsbStorage:Z
    if-eqz v4, :cond_3

    if-eqz v8, :cond_3

    .line 709
    const/4 v0, 0x0

    .line 712
    .end local v4           #isPath1onUsbStorage:Z
    .end local v8           #isPath2onUsbStorage:Z
    :cond_3
    return v0
.end method

.method public static isFileOnExternalStorage(Ljava/lang/String;)Z
    .locals 2
    .parameter "path"

    .prologue
    const/4 v0, 0x0

    .line 659
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_1

    .line 662
    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-static {}, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->getExternalStoragePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-boolean v1, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->m_bSupportRemovableStorage:Z

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->getRemovableStoragePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static isFileOnPhoneStorage(Ljava/lang/String;)Z
    .locals 2
    .parameter "path"

    .prologue
    const/4 v0, 0x0

    .line 641
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_1

    .line 644
    :cond_0
    :goto_0
    return v0

    :cond_1
    sget-boolean v1, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->m_bSupportPhoneStorage:Z

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->getPhoneStoragePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static isFileOnRemovableStorage(Ljava/lang/String;)Z
    .locals 2
    .parameter "path"

    .prologue
    const/4 v0, 0x0

    .line 650
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_1

    .line 653
    :cond_0
    :goto_0
    return v0

    :cond_1
    sget-boolean v1, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->m_bSupportRemovableStorage:Z

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->getRemovableStoragePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static isFileOnUsbStorage(Ljava/lang/String;)Z
    .locals 2
    .parameter "path"

    .prologue
    const/4 v0, 0x0

    .line 670
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_1

    .line 673
    :cond_0
    :goto_0
    return v0

    :cond_1
    sget-boolean v1, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->m_bSupportUsbStorage:Z

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->getUsbStoragePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static isInternalStorageStateError()Z
    .locals 1

    .prologue
    .line 509
    invoke-static {}, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->getInternalStorageState()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->isStorageStateError(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static final isMediaScannerScanning(Landroid/content/ContentResolver;)Z
    .locals 10
    .parameter "cr"

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v3, 0x0

    .line 348
    const/4 v7, 0x0

    .line 351
    .local v7, result:Z
    invoke-static {}, Landroid/provider/MediaStore;->getMediaScannerUri()Landroid/net/Uri;

    move-result-object v1

    new-array v2, v9, [Ljava/lang/String;

    const-string v0, "volume"

    aput-object v0, v2, v8

    move-object v0, p0

    move-object v4, v3

    move-object v5, v3

    invoke-static/range {v0 .. v5}, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->query(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 353
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 354
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-ne v0, v9, :cond_0

    .line 355
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 356
    const-string v0, "external"

    invoke-interface {v6, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    .line 358
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 360
    :cond_1
    return v7
.end method

.method public static isPhoneMediaMounted()Z
    .locals 1

    .prologue
    .line 435
    sget-boolean v0, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->m_bSupportPhoneStorage:Z

    if-nez v0, :cond_0

    .line 436
    const/4 v0, 0x0

    .line 438
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->getPhoneStorageState(Z)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->isStorageMediaMounted(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public static isPhoneStorageReady(Z)Z
    .locals 2
    .parameter "requireWriteAccess"

    .prologue
    .line 615
    sget-boolean v0, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->m_bSupportPhoneStorage:Z

    if-nez v0, :cond_0

    .line 616
    const/4 v0, 0x0

    .line 618
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->getPhoneStorageState(Z)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->getPhoneStorageCameraPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p0, v1}, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->isStorageReady(Ljava/lang/String;ZLjava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public static isPhoneStorageStateError(Z)Z
    .locals 1
    .parameter "bRefresh"

    .prologue
    .line 514
    sget-boolean v0, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->m_bSupportPhoneStorage:Z

    if-nez v0, :cond_0

    .line 515
    const/4 v0, 0x1

    .line 517
    :goto_0
    return v0

    :cond_0
    invoke-static {p0}, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->getPhoneStorageState(Z)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->isStorageStateError(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public static isQueryExternalDB(Z)Z
    .locals 2
    .parameter "requireWriteAccess"

    .prologue
    const/4 v0, 0x1

    .line 594
    invoke-static {p0}, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->isExternalStorageReady(Z)Z

    move-result v1

    if-ne v1, v0, :cond_1

    .line 604
    :cond_0
    :goto_0
    return v0

    .line 599
    :cond_1
    sget-boolean v1, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->m_bSupportPhoneStorage:Z

    if-ne v1, v0, :cond_2

    invoke-static {p0}, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->isPhoneStorageReady(Z)Z

    move-result v1

    if-eq v1, v0, :cond_0

    .line 604
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isRemovableMediaMounted()Z
    .locals 1

    .prologue
    .line 444
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->isRemovableMediaMounted(Z)Z

    move-result v0

    return v0
.end method

.method public static isRemovableMediaMounted(Z)Z
    .locals 1
    .parameter "bRefresh"

    .prologue
    .line 449
    sget-boolean v0, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->m_bSupportRemovableStorage:Z

    if-nez v0, :cond_0

    .line 450
    const/4 v0, 0x0

    .line 452
    :goto_0
    return v0

    :cond_0
    invoke-static {p0}, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->getRemovableStorageState(Z)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->isStorageMediaMounted(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public static isRemovableStorageReady(Z)Z
    .locals 2
    .parameter "requireWriteAccess"

    .prologue
    .line 623
    sget-boolean v1, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->m_bSupportRemovableStorage:Z

    if-nez v1, :cond_0

    .line 624
    const/4 v1, 0x0

    .line 627
    :goto_0
    return v1

    .line 626
    :cond_0
    const/4 v1, 0x1

    invoke-static {v1}, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->getRemovableStorageState(Z)Ljava/lang/String;

    move-result-object v0

    .line 627
    .local v0, szStorageState:Ljava/lang/String;
    invoke-static {}, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->getRemovableStorageCameraPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p0, v1}, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->isStorageReady(Ljava/lang/String;ZLjava/lang/String;)Z

    move-result v1

    goto :goto_0
.end method

.method public static isRemovableStorageStateError(Z)Z
    .locals 1
    .parameter "bRefresh"

    .prologue
    .line 496
    sget-boolean v0, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->m_bSupportRemovableStorage:Z

    if-nez v0, :cond_0

    .line 497
    const/4 v0, 0x1

    .line 499
    :goto_0
    return v0

    :cond_0
    invoke-static {p0}, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->getRemovableStorageState(Z)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->isStorageStateError(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public static isScannerFinish(Landroid/content/Intent;)Z
    .locals 2
    .parameter "intent"

    .prologue
    .line 970
    const/4 v1, 0x0

    .line 972
    .local v1, bResult:Z
    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 973
    .local v0, action:Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->isActionScannerFinish(Ljava/lang/String;)Z

    move-result v1

    .line 975
    return v1
.end method

.method public static isScannerStart(Landroid/content/Intent;)Z
    .locals 2
    .parameter "intent"

    .prologue
    .line 962
    const/4 v1, 0x0

    .line 964
    .local v1, bResult:Z
    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 965
    .local v0, action:Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->isActionScannerStart(Ljava/lang/String;)Z

    move-result v1

    .line 966
    return v1
.end method

.method public static isStorageConnected(Landroid/content/Intent;)Z
    .locals 2
    .parameter "intent"

    .prologue
    .line 953
    const/4 v1, 0x0

    .line 955
    .local v1, bResult:Z
    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 956
    .local v0, action:Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->isActionStorageConnect(Ljava/lang/String;)Z

    move-result v1

    .line 958
    return v1
.end method

.method public static isStorageDisconnected(Landroid/content/Intent;)Z
    .locals 2
    .parameter "intent"

    .prologue
    .line 945
    const/4 v1, 0x0

    .line 947
    .local v1, bResult:Z
    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 948
    .local v0, action:Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->isActionStorageDisconnect(Ljava/lang/String;)Z

    move-result v1

    .line 949
    return v1
.end method

.method public static isStorageDisconnected(Ljava/lang/String;)Z
    .locals 2
    .parameter "action"

    .prologue
    .line 935
    const/4 v0, 0x0

    .line 937
    .local v0, bResult:Z
    if-nez p0, :cond_0

    move v1, v0

    .line 941
    .end local v0           #bResult:Z
    .local v1, bResult:I
    :goto_0
    return v1

    .line 940
    .end local v1           #bResult:I
    .restart local v0       #bResult:Z
    :cond_0
    invoke-static {p0}, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->isActionStorageDisconnect(Ljava/lang/String;)Z

    move-result v0

    move v1, v0

    .line 941
    .restart local v1       #bResult:I
    goto :goto_0
.end method

.method public static isStorageMediaMounted(Ljava/lang/String;)Z
    .locals 1
    .parameter "State"

    .prologue
    .line 409
    const-string v0, "mounted"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isStorageMediaReadOnly(Ljava/lang/String;)Z
    .locals 1
    .parameter "State"

    .prologue
    .line 414
    const-string v0, "mounted_ro"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isStorageMediaShared(Ljava/lang/String;)Z
    .locals 1
    .parameter "State"

    .prologue
    .line 419
    const-string v0, "shared"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isStorageReady(Ljava/lang/String;ZLjava/lang/String;)Z
    .locals 3
    .parameter "state"
    .parameter "requireWriteAccess"
    .parameter "path"

    .prologue
    .line 544
    invoke-static {p0}, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->isStorageMediaMounted(Ljava/lang/String;)Z

    move-result v0

    .line 545
    .local v0, bRet:Z
    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 547
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 549
    .local v1, directory:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    move-result v2

    if-nez v2, :cond_1

    .line 550
    const/4 v0, 0x0

    .line 555
    .end local v1           #directory:Ljava/io/File;
    :cond_0
    :goto_0
    return v0

    .line 552
    .restart local v1       #directory:Ljava/io/File;
    :cond_1
    invoke-virtual {v1}, Ljava/io/File;->canWrite()Z

    move-result v0

    goto :goto_0
.end method

.method public static isStorageRootBucketID(Ljava/lang/String;)Z
    .locals 6
    .parameter "bucketID"

    .prologue
    .line 1011
    const/4 v0, 0x0

    .line 1013
    .local v0, bIsStorageRoot:Z
    invoke-static {}, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->isSupportExternalStorage()Z

    move-result v1

    .line 1014
    .local v1, bIsSupportExternalStorage:Z
    invoke-static {}, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->isSupportRemovableStorage()Z

    move-result v3

    .line 1015
    .local v3, bIsSupportRemovableStorage:Z
    invoke-static {}, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->isSupportPhoneStorage()Z

    move-result v2

    .line 1016
    .local v2, bIsSupportPhoneStorage:Z
    invoke-static {}, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->isSupportUsbStorage()Z

    move-result v4

    .line 1018
    .local v4, bIsSupportUsbStorage:Z
    if-eqz v1, :cond_0

    sget-object v5, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->BUCKET_ID_EXTERNAL_STORAGE:Ljava/lang/String;

    invoke-virtual {v5, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    :cond_0
    if-eqz v2, :cond_1

    sget-object v5, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->BUCKET_ID_PHONE_STORAGE:Ljava/lang/String;

    invoke-virtual {v5, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    :cond_1
    if-eqz v3, :cond_2

    sget-object v5, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->BUCKET_ID_REMOVABLE_STORAGE:Ljava/lang/String;

    invoke-virtual {v5, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    :cond_2
    if-eqz v4, :cond_4

    sget-object v5, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->BUCKET_ID_USB_STORAGE:Ljava/lang/String;

    invoke-virtual {v5, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 1023
    :cond_3
    const/4 v0, 0x1

    .line 1026
    :cond_4
    return v0
.end method

.method public static isStorageStateError(Ljava/lang/String;)Z
    .locals 1
    .parameter "State"

    .prologue
    .line 485
    const-string v0, "shared"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "bad_removal"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "nofs"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "removed"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "unmountable"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "unmounted"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "HtcMemoryChecker_LOW_INTERNAL_MEMORY"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isSupportExternalStorage()Z
    .locals 1

    .prologue
    .line 124
    const/4 v0, 0x1

    return v0
.end method

.method public static isSupportInternalStorage()Z
    .locals 1

    .prologue
    .line 108
    const/4 v0, 0x1

    return v0
.end method

.method public static isSupportPhoneStorage()Z
    .locals 1

    .prologue
    .line 118
    sget-boolean v0, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->m_bSupportPhoneStorage:Z

    return v0
.end method

.method public static isSupportPhoneStorageUri()Z
    .locals 1

    .prologue
    .line 113
    invoke-static {}, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->getPhonePhotosUri()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isSupportRemovableStorage()Z
    .locals 1

    .prologue
    .line 129
    sget-boolean v0, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->m_bSupportRemovableStorage:Z

    return v0
.end method

.method public static isSupportUsbStorage()Z
    .locals 1

    .prologue
    .line 134
    sget-boolean v0, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->m_bSupportUsbStorage:Z

    return v0
.end method

.method public static isUsbMediaMounted()Z
    .locals 1

    .prologue
    .line 465
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->isUsbMediaMounted(Z)Z

    move-result v0

    return v0
.end method

.method public static isUsbMediaMounted(Z)Z
    .locals 1
    .parameter "bRefresh"

    .prologue
    .line 457
    sget-boolean v0, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->m_bSupportUsbStorage:Z

    if-nez v0, :cond_0

    .line 458
    const/4 v0, 0x0

    .line 460
    :goto_0
    return v0

    :cond_0
    invoke-static {p0}, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->getUsbStorageState(Z)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->isStorageMediaMounted(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public static isUsbStorageReady(Z)Z
    .locals 2
    .parameter "requireWriteAccess"

    .prologue
    .line 632
    sget-boolean v1, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->m_bSupportUsbStorage:Z

    if-nez v1, :cond_0

    .line 633
    const/4 v1, 0x0

    .line 636
    :goto_0
    return v1

    .line 635
    :cond_0
    const/4 v1, 0x1

    invoke-static {v1}, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->getUsbStorageState(Z)Ljava/lang/String;

    move-result-object v0

    .line 636
    .local v0, szStorageState:Ljava/lang/String;
    invoke-static {}, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->getUsbStorageCameraPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p0, v1}, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->isStorageReady(Ljava/lang/String;ZLjava/lang/String;)Z

    move-result v1

    goto :goto_0
.end method

.method public static isUsbStorageStateError(Z)Z
    .locals 1
    .parameter "bRefresh"

    .prologue
    .line 522
    sget-boolean v0, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->m_bSupportUsbStorage:Z

    if-nez v0, :cond_0

    .line 523
    const/4 v0, 0x1

    .line 525
    :goto_0
    return v0

    :cond_0
    invoke-static {p0}, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->getUsbStorageState(Z)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->isStorageStateError(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method private static final query(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 2
    .parameter "resolver"
    .parameter "uri"
    .parameter "projection"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "sortOrder"

    .prologue
    const/4 v1, 0x0

    .line 365
    if-nez p0, :cond_0

    .line 370
    :goto_0
    return-object v1

    .line 368
    :cond_0
    :try_start_0
    invoke-virtual/range {p0 .. p5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 369
    :catch_0
    move-exception v0

    .line 370
    .local v0, ex:Ljava/lang/UnsupportedOperationException;
    goto :goto_0
.end method

.method public static setExternalStorageState(Ljava/lang/String;)V
    .locals 0
    .parameter "state"

    .prologue
    .line 321
    sput-object p0, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->m_szExternalStorageState:Ljava/lang/String;

    .line 322
    return-void
.end method

.method public static setRemovableStorageState(Ljava/lang/String;)V
    .locals 0
    .parameter "state"

    .prologue
    .line 276
    sput-object p0, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->m_szRemovableStorageState:Ljava/lang/String;

    .line 277
    return-void
.end method
