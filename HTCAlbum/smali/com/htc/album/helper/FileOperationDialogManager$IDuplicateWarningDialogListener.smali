.class public interface abstract Lcom/htc/album/helper/FileOperationDialogManager$IDuplicateWarningDialogListener;
.super Ljava/lang/Object;
.source "FileOperationDialogManager.java"

# interfaces
.implements Lcom/htc/album/helper/FileOperationDialogManager$IFileOperationDialogCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/album/helper/FileOperationDialogManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "IDuplicateWarningDialogListener"
.end annotation


# virtual methods
.method public abstract onConfirm(Z)V
.end method

.method public abstract onSkip(Z)V
.end method
