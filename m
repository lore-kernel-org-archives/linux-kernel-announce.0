Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9DE193715E
	for <linux-kernel-announce@vger.kernel.org>; Sun, 11 Aug 2024 10:51:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723373476; cv=none; b=qN2/RjoxSJqc2jDdQEfDwGd43+CbeqdzL2eXV28J1MIHDDn9/l3mzHjMWqPgqjrNLDdRVMUhjaNVbA9kD875xVygnNaVinjg+F84xdbsb4IUnHXQN3YezpJBar2UFr/7ONy1wDJDoVKI/8u7eR1WJDchTAGObGTeYK7OAR6hTW8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723373476; c=relaxed/simple;
	bh=7mUbVyKvvXI0Jgu1xSRAcDleJDvaEEvPpE8QQFlp8kA=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=ZJsgymJNSuEzwj7naqMFDLiI1tzHhj1NHuRf4K9xsXJu9HwCQ/50T76d1rFwIVkDXjauYL8zlbvrY4dCnjZ+5orIngWCZJvo12v7hXeCrBnEqM8I2hE8Wp3zJ5B/lu4f2w/jjXEvKl3UVLwNhdWy3g6LfxHBu8vM1TyZPJyFgmo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1723373476;
	bh=7mUbVyKvvXI0Jgu1xSRAcDleJDvaEEvPpE8QQFlp8kA=;
	h=Subject:From:To:Date:From;
	b=K718mJVxZqFpa36rkFP/IlnLsmA3uIDgo1snyYspg5UsOj8YUB8iMxPgg9hAbzBTr
	 nv5V2JBDWqxi342BMVgkOWBsQwXp2tWoZ8t6X/IjZN18sX451yMmQDUcxVz/idvPpV
	 18fOiDFIoAmLRyODtyN4sdTWxFynFSLmK/MKcDlU=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 36DE5C32786
	for <linux-kernel-announce@vger.kernel.org>; Sun, 11 Aug 2024 10:51:16 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id 3A4623823358
	for <linux-kernel-announce@vger.kernel.org>; Sun, 11 Aug 2024 10:51:16 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.1.104 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Sun, 11 Aug 2024 10:51:14 +0000
Message-Id: <20240811105114.release-6.1.104@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.1.104
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.1.104.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.1.104.xz

Linux kernel version 6.1.104 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.1.104.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.1.104.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.1.104.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v6.1.104/v6.1.103

