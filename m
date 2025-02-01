Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26FDD18A6AE
	for <linux-kernel-announce@vger.kernel.org>; Sat,  1 Feb 2025 16:40:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738428029; cv=none; b=ONfrPWFHz+u4MePZmgSxK0LOGJUpv3AyoEm5Q3hBQaA7vOwrVMACma/kitNRzoZh1YcqSQ0ChzK+xES44mPH2BA+biE6U2QVmNcnKk+gY8Mt6FKhuvHU7WjJcvERKqw8wsE+jwsizeSgV66vyE5RROsP/H2M5yDnvXlW08nSx2w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738428029; c=relaxed/simple;
	bh=+HP+GsK2Z2y4a9eEsuALjbS6PbqYJqsnZ/NKfT4YtkY=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=YkHY1rAkj83noVkcOHfr2AkPVYqn723ulzp4Vh0jaPAnA56hoDBNObeeeaZ6rxQSqwsI2Zz4kEYz09ojERLE6ZSLVgndcp3e8lOMKj8Lcd14rqZQ2D9ZH5RNK+wVAVMyMj7Z1DymjXaz2Fqkb1KK2ykubIsR1Bv0W/B4uV+k/Ys=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1738428029;
	bh=+HP+GsK2Z2y4a9eEsuALjbS6PbqYJqsnZ/NKfT4YtkY=;
	h=Subject:From:To:Date:From;
	b=G9KotwKGSS5abD7cZeLW9vd05a4jEXt0KVngXGddo1+uxEed6XAqXpWkloO+bbfEx
	 6RBCrySbADBwZx9LRhsI5lv2XnVJVc/QJIPOUIKL2PupEk8XUg0AV7QMcolzx/dXTB
	 R6+pEDdJNeZlhfTja8uBy5LRfLZopU6PBiTX1x3Q=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8F2CDC4CED3
	for <linux-kernel-announce@vger.kernel.org>; Sat,  1 Feb 2025 16:40:28 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id 3FBCC380AA68
	for <linux-kernel-announce@vger.kernel.org>; Sat,  1 Feb 2025 16:40:56 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.13.1 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Sat, 01 Feb 2025 16:40:54 +0000
Message-Id: <20250201164054.release-6.13.1@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.13.1
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.13.1.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.13.1.xz

Linux kernel version 6.13.1 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.13.1.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.13.1.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.13.1.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v6.13.1/v6.13

