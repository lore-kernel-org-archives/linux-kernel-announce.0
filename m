Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0005C1531C8
	for <linux-kernel-announce@vger.kernel.org>; Sun, 13 Jul 2025 22:01:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752444072; cv=none; b=aO9tsyCud1+nlNOA/lTp4G9F9bttQA3V0rzh674eI7G3ZK3HjexN7cwZQffmWXEnB/azl5I/y4rYEliVtdR7IPbBHCzXKD9ejCcNR3HDmeu3RRhH834bnSiJ0MUs/6QImrt2CY5+OV1oMM3emF4cqNpUAuoGzZuNWnPxpyelP6Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752444072; c=relaxed/simple;
	bh=acnhKu1Zgg4ZFVMSaU7rx0zrMViu0u1IjOM9z2S/Dxw=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=CP2BYzI1A9irViDwf0GKf4KOCypEu3qGwSNZrOjUwcd2KjbxxEJ3aZY5sRHRS9QSURdweXAcdnN2qyoRbNIz5hxb/WixOvW5iefTP/KTg8ufpfUhtSc0drX7FTc2azPHykx5uco/MX++sU2QlGfmq6uhmybK3TFyOdtN02AAnI0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1752444072;
	bh=acnhKu1Zgg4ZFVMSaU7rx0zrMViu0u1IjOM9z2S/Dxw=;
	h=Subject:From:To:Date:From;
	b=geEfkVvUX23KesyAqn0sXmqMJGZGxrNsZBIKdH3vAfjwjjXkjtoyLsYmwDaTtSy+p
	 lpI4HrxMXB8IgBAP+pcVAxrLY+OBIAlQiTWke7221Sa526cll4kVRHCdnJXyjzDRPQ
	 y7V/OXtJNsv+39Zp9q8cJ0IchKQ193wG21+HcQL0=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 93B0EC4CEF5
	for <linux-kernel-announce@vger.kernel.org>; Sun, 13 Jul 2025 22:01:11 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id EEAF1383B276
	for <linux-kernel-announce@vger.kernel.org>; Sun, 13 Jul 2025 22:01:33 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.16-rc6 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Sun, 13 Jul 2025 22:01:32 +0000
Message-Id: <20250713220132.release-6.16-rc6@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.16-rc6
X-Linux-Kernel-Full-URL: https://git.kernel.org/torvalds/t/linux-6.16-rc6.tar.gz
X-Linux-Kernel-Patch-URL: https://git.kernel.org/torvalds/p/v6.16-rc6/v6.15

Linux kernel version 6.16-rc6 is now available:

Full source:    https://git.kernel.org/torvalds/t/linux-6.16-rc6.tar.gz
Patch:          https://git.kernel.org/torvalds/p/v6.16-rc6/v6.15

You can view the summary of the changes at the following URL:
https://git.kernel.org/torvalds/ds/v6.16-rc6/v6.16-rc5

