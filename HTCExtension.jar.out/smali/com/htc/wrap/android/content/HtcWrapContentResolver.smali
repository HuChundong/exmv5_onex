.class public Lcom/htc/wrap/android/content/HtcWrapContentResolver;
.super Ljava/lang/Object;
.source "HtcWrapContentResolver.java"


# static fields
.field public static final SYNC_ERROR_SYNC_ALREADY_IN_PROGRESS:I = 0x1

.field public static final SYNC_OBSERVER_TYPE_STATUS:I = 0x1


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 27
    return-void
.end method

.method public static acquireHtcProvider(Landroid/content/ContentResolver;Ljava/lang/String;)Landroid/content/HtcIfIContentProvider;
    .locals 1
    .parameter "cr"
    .parameter "name"

    .prologue
    .line 72
    invoke-virtual {p0, p1}, Landroid/content/ContentResolver;->acquireProvider(Ljava/lang/String;)Landroid/content/IContentProvider;

    move-result-object v0

    return-object v0
.end method

.method public static acquireProvider(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/content/IContentProvider;
    .locals 1
    .parameter "cr"
    .parameter "uri"

    .prologue
    .line 54
    invoke-virtual {p0, p1}, Landroid/content/ContentResolver;->acquireProvider(Landroid/net/Uri;)Landroid/content/IContentProvider;

    move-result-object v0

    return-object v0
.end method

.method public static acquireProvider(Landroid/content/ContentResolver;Ljava/lang/String;)Landroid/content/IContentProvider;
    .locals 1
    .parameter "cr"
    .parameter "name"

    .prologue
    .line 62
    invoke-virtual {p0, p1}, Landroid/content/ContentResolver;->acquireProvider(Ljava/lang/String;)Landroid/content/IContentProvider;

    move-result-object v0

    return-object v0
.end method

.method public static getHtcSyncStatus(Landroid/accounts/Account;Ljava/lang/String;)Landroid/content/HtcIfSyncStatusInfo;
    .locals 1
    .parameter "account"
    .parameter "authority"

    .prologue
    .line 68
    invoke-static {p0, p1}, Landroid/content/ContentResolver;->getSyncStatus(Landroid/accounts/Account;Ljava/lang/String;)Landroid/content/SyncStatusInfo;

    move-result-object v0

    return-object v0
.end method

.method public static getSyncStatus(Landroid/accounts/Account;Ljava/lang/String;)Landroid/content/SyncStatusInfo;
    .locals 1
    .parameter "account"
    .parameter "authority"

    .prologue
    .line 40
    invoke-static {p0, p1}, Landroid/content/ContentResolver;->getSyncStatus(Landroid/accounts/Account;Ljava/lang/String;)Landroid/content/SyncStatusInfo;

    move-result-object v0

    return-object v0
.end method

.method public static registerSetSyncAfterOnAccountUpdate(Landroid/accounts/Account;Ljava/lang/String;)V
    .locals 0
    .parameter "account"
    .parameter "authority"

    .prologue
    .line 24
    return-void
.end method

.method public static releaseProvider(Landroid/content/ContentResolver;Landroid/content/HtcIfIContentProvider;)Z
    .locals 1
    .parameter "cr"
    .parameter "icp"

    .prologue
    .line 76
    check-cast p1, Landroid/content/IContentProvider;

    .end local p1
    invoke-virtual {p0, p1}, Landroid/content/ContentResolver;->releaseProvider(Landroid/content/IContentProvider;)Z

    move-result v0

    return v0
.end method
