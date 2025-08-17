Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EAC5C3176F1
	for <linux-kernel-announce@vger.kernel.org>; Sun, 17 Aug 2025 23:01:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755471677; cv=none; b=UV2qeLqpYxMYE0WTxR7CNAqMI+YuzbCU5HcsBgCG3bxSFSL8Npbg39d7isP85Wk97iOtnTa0PDzg9SHJ9/7aQyHZFetgm8CH0NClvU4wHmURB/NtkzWoFW6/Ktgyi3i9Yh/16naOV05oFhBHGrearANgPWMa9fE/XNRqr3xHMIw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755471677; c=relaxed/simple;
	bh=5/15DForc7RfgzlLOvbByXhrcklq1g92gqdd6Rat+v4=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=D0j1vYVAi8pB8ky6M09I22TjZYngiJKooreXV31RRLttsKB8/4wZNTy/yt/7wwxgkajMGkzh1WbxATjiE1R3NCLvkSViRRjivN0lvKHzaOy/a3VF19mQ8cmGZ56eWOmB3BBA4VHWV7qUFS+eiPmT22irzyAkFmlQI2D4SCdy8wY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1755471677;
	bh=5/15DForc7RfgzlLOvbByXhrcklq1g92gqdd6Rat+v4=;
	h=Subject:From:To:Date:From;
	b=E8HBhsivAsT6zPKdX1giYlNupmefvIL+qjenh3APsij4dMeMVKh+qwKryQoFPwvT3
	 tq58ffTXT7aA9IoVqfU7nWGXCuTEXVmHtDTFiS1b9SrWqdCW53RM1pOrU7bHckvSuM
	 K17wWzu5D/0VMJ9z6eKMaYqMONIgg1eXtxJLgskY=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7A018C4CEEB
	for <linux-kernel-announce@vger.kernel.org>; Sun, 17 Aug 2025 23:01:15 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id EE984383BF5A
	for <linux-kernel-announce@vger.kernel.org>; Sun, 17 Aug 2025 23:01:26 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.17-rc2 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Sun, 17 Aug 2025 23:01:25 +0000
Message-Id: <20250817230125.release-6.17-rc2@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.17-rc2
X-Linux-Kernel-Full-URL: https://git.kernel.org/torvalds/t/linux-6.17-rc2.tar.gz
X-Linux-Kernel-Patch-URL: https://git.kernel.org/torvalds/p/v6.17-rc2/v6.16

Linux kernel version 6.17-rc2 is now available:

Full source:    https://git.kernel.org/torvalds/t/linux-6.17-rc2.tar.gz
Patch:          https://git.kernel.org/torvalds/p/v6.17-rc2/v6.16

You can view the summary of the changes at the following URL:
https://git.kernel.org/torvalds/ds/v6.17-rc2/v6.17-rc1

