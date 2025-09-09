Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7807631D372
	for <linux-kernel-announce@vger.kernel.org>; Tue,  9 Sep 2025 17:05:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757437548; cv=none; b=bLikyHlEQwAjma6am94cYDf4oDSxrmi2g991p4pNMIOB5E5ryep5vEZTmhLHj+W1ueApUbwIp+pjtgrHUCt2zfudrirgT4HxMwr2na60mQpYNZsgawJP3PLKEotJAWjyelNibDymCDe5sIVAcLbhufpuTETGAZ4bR92bLFQHlFM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757437548; c=relaxed/simple;
	bh=tu2wV8fNQ1OMb+xOqpg8jjmlBQ6GDxLVPHQCBRZ0onc=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=TKEEsoZy5GwqbkEopzemKFY+88zUYLeR8NlLY1Zj8bLPqJaFFfrZkKs578MzPxxcseIxcpuhKChvQemGWBUFwrTQzwSgMaxTny7Kr1RmuVgSN4YNLLh7kNW7EIDCBtpl9Yx/fYPcUpvoBxOSLBAbja5Coz4Lm+hfZHa+b0Kfpfs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1757437548;
	bh=tu2wV8fNQ1OMb+xOqpg8jjmlBQ6GDxLVPHQCBRZ0onc=;
	h=Subject:From:To:Date:From;
	b=cis3TiY87l+Q4JqzJF6mRa1p8TiGFHwdH2STFNYlrKK3PMwl7/wIHiXtRWY0mCvJY
	 Ae5QSWnQz0qRCQcyQjoB5wwUDQiZ1XuDOYDug5up/HgTHZfbIKMuNDVqmO7v8fHVJe
	 Xru06zMUDQKenhkJ9cprHjlqIIRFOyGi08n5xSeU=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3FDAEC116B1
	for <linux-kernel-announce@vger.kernel.org>; Tue,  9 Sep 2025 17:05:48 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id ADE02383BF69
	for <linux-kernel-announce@vger.kernel.org>; Tue,  9 Sep 2025 17:05:52 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 5.15.192 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Tue, 09 Sep 2025 17:05:51 +0000
Message-Id: <20250909170551.release-5.15.192@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 5.15.192
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v5.x/linux-5.15.192.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v5.x/patch-5.15.192.xz

Linux kernel version 5.15.192 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v5.x/linux-5.15.192.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v5.x/patch-5.15.192.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v5.x/linux-5.15.192.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v5.15.192/v5.15.191

