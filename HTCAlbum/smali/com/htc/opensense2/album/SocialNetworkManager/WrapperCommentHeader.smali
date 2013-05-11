.class public Lcom/htc/opensense2/album/SocialNetworkManager/WrapperCommentHeader;
.super Lcom/htc/opensense2/album/SocialNetworkManager/WrapperComment;
.source "WrapperCommentHeader.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "WrapperCommentHeader"


# instance fields
.field private mPhotoName:Ljava/lang/String;

.field private mPhotoURL:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 28
    invoke-direct {p0}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperComment;-><init>()V

    .line 24
    iput-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperCommentHeader;->mPhotoName:Ljava/lang/String;

    .line 25
    iput-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperCommentHeader;->mPhotoURL:Ljava/lang/String;

    .line 30
    return-void
.end method


# virtual methods
.method public getComment()Ljava/lang/String;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperComment;->mUserComment:Ljava/lang/String;

    return-object v0
.end method

.method public getOwnerAvatarURL()Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperComment;->mUserAvatarURL:Ljava/lang/String;

    return-object v0
.end method

.method public getOwnerName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperComment;->mDisplayName:Ljava/lang/String;

    return-object v0
.end method

.method public getPhotoName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperCommentHeader;->mPhotoName:Ljava/lang/String;

    return-object v0
.end method

.method public getPhotoURL()Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperCommentHeader;->mPhotoURL:Ljava/lang/String;

    return-object v0
.end method

.method public getTime()J
    .locals 2

    .prologue
    .line 77
    iget-wide v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperComment;->mTime:J

    return-wide v0
.end method

.method public readFrom(ZIILjava/lang/String;)V
    .locals 5
    .parameter "isVersionChange"
    .parameter "newVer"
    .parameter "oldVer"
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 103
    const/4 v1, 0x0

    .line 104
    .local v1, i:I
    invoke-virtual {p0, p4}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperCommentHeader;->removeAllHeader(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 105
    .local v0, data:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    add-int/lit8 v2, v1, 0x1

    .end local v1           #i:I
    .local v2, i:I
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-super {p0, p1, p2, p3, v3}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperComment;->readFrom(ZIILjava/lang/String;)V

    .line 106
    packed-switch p3, :pswitch_data_0

    .line 113
    const-string v3, "WrapperCommentHeader"

    const-string v4, "[WrapperCommentHeader][readFrom] No implement version changed..."

    invoke-static {v3, v4}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    move v1, v2

    .line 117
    .end local v2           #i:I
    .restart local v1       #i:I
    :goto_0
    return-void

    .line 109
    .end local v1           #i:I
    .restart local v2       #i:I
    :pswitch_0
    add-int/lit8 v1, v2, 0x1

    .end local v2           #i:I
    .restart local v1       #i:I
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iput-object v3, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperCommentHeader;->mPhotoName:Ljava/lang/String;

    .line 110
    add-int/lit8 v2, v1, 0x1

    .end local v1           #i:I
    .restart local v2       #i:I
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iput-object v3, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperCommentHeader;->mPhotoURL:Ljava/lang/String;

    move v1, v2

    .line 111
    .end local v2           #i:I
    .restart local v1       #i:I
    goto :goto_0

    .line 106
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public setOwnerAvatarURL(Ljava/lang/String;)V
    .locals 0
    .parameter "avatarURL"

    .prologue
    .line 52
    iput-object p1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperComment;->mUserAvatarURL:Ljava/lang/String;

    .line 53
    return-void
.end method

.method public setOwnerName(Ljava/lang/String;)V
    .locals 0
    .parameter "displayName"

    .prologue
    .line 62
    iput-object p1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperComment;->mDisplayName:Ljava/lang/String;

    .line 63
    return-void
.end method

.method public setPhotoComment(Ljava/lang/String;)V
    .locals 0
    .parameter "photoComment"

    .prologue
    .line 82
    iput-object p1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperComment;->mUserComment:Ljava/lang/String;

    .line 83
    return-void
.end method

.method public setPhotoName(Ljava/lang/String;)V
    .locals 0
    .parameter "photoName"

    .prologue
    .line 34
    iput-object p1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperCommentHeader;->mPhotoName:Ljava/lang/String;

    .line 35
    return-void
.end method

.method public setPhotoURL(Ljava/lang/String;)V
    .locals 0
    .parameter "photoURL"

    .prologue
    .line 43
    iput-object p1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperCommentHeader;->mPhotoURL:Ljava/lang/String;

    .line 44
    return-void
.end method

.method public setTime(J)V
    .locals 0
    .parameter "time"

    .prologue
    .line 72
    iput-wide p1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperComment;->mTime:J

    .line 73
    return-void
.end method

.method public toFormatedString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 93
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 94
    .local v0, data:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-super {p0}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperComment;->toFormatedString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 95
    invoke-virtual {p0}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperCommentHeader;->getPhotoName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 96
    invoke-virtual {p0}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperCommentHeader;->getPhotoURL()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 98
    invoke-virtual {p0, v0}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperCommentHeader;->capAllHeader(Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
