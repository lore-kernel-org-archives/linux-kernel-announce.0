Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ACF471FAC4F
	for <linux-kernel-announce@vger.kernel.org>; Thu, 13 Mar 2025 11:55:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741866917; cv=none; b=R+1jxza9hJlzAzN+rurp7TPHgPi3aADLZQv2iloACmX7qfiBEzqy5716+CoPPv/Sk7glUyNfIWmWfTARBJioNzbsMwP49ZDmcDzqy2gybvondM1sSNSrv1YsLbUHpekPY1LNChqAVYvcuMPNG7WEwJjIyafmEXwsr0pQr18fELo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741866917; c=relaxed/simple;
	bh=fyQlaIVTYhbcyriKG07pkTsspw1FVxy7OCKFnR9rVmg=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=hvZNSUDOTtVCUAIwaM+1lOQZmmzc7ZL3rDzSw1y1qEMG9J0WOcg8U7RTtWrnhjSzsE7hqr2VM5hb2BI7T8kqfYS8UXZKehP/hR+gFSTyx2IfGEsJxsYj32R6KUdOYwyMnw9YgRehQZFfuY5YeVIO72bhqGiz1AVjLTJjzkzV+RQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1741866917;
	bh=fyQlaIVTYhbcyriKG07pkTsspw1FVxy7OCKFnR9rVmg=;
	h=Subject:From:To:Date:From;
	b=NE8Ts/xMqCLfyD4FY7nhmmxmZkTW36wbn4QFAEuzDycWt3hE7J9udm+C+rJhGKasK
	 GG0WdihhuQoZghkVXoN/+3JJGVuiiQ7exk9EyZyugfW0jLpVxId+xCkr3fLSL3Cl8Y
	 Y0EvJHBuxfvkBAjN2pRP6ICw3+aenU+sdw3dPi/8=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3583AC4CEDD
	for <linux-kernel-announce@vger.kernel.org>; Thu, 13 Mar 2025 11:55:17 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id EC31C3806651
	for <linux-kernel-announce@vger.kernel.org>; Thu, 13 Mar 2025 11:55:52 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 5.4.291 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Thu, 13 Mar 2025 11:55:51 +0000
Message-Id: <20250313115551.release-5.4.291@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 5.4.291
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v5.x/linux-5.4.291.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v5.x/patch-5.4.291.xz

Linux kernel version 5.4.291 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v5.x/linux-5.4.291.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v5.x/patch-5.4.291.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v5.x/linux-5.4.291.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v5.4.291/v5.4.290

