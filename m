Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E2DCDDAD
	for <linux-kernel-announce@vger.kernel.org>; Fri, 28 Mar 2025 21:30:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743197416; cv=none; b=PZT53jDXQC0JkU7Izsd3bNS0Hkb9jzYvZ5lQt3DYsnRMLJQ2+u7SdD2fpI7HrGfYCzKVNCqSwGQIdSfSKK/2fqTR8Dy9Ph+bR5sUUUZK/LJ5SUla4r3N1p0ekCAmKX2AX7ZJyOUbaH6Aq17Hi1U2evfXz/4FiMexcrpkVIEy67Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743197416; c=relaxed/simple;
	bh=+6CAX3G0OUY+AdYVj52gLphnRLfrD1ZOuqjCzLw2C5M=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=nbvxKWG9i0OG0E5jcWcrsmpcUUZYfl7455KMWU+R3YWU3h0btsMZkAhGfuqEr1kurFJW9yaDeGYGs28JinLf4D2H2vQn50iIO+pr6VxtFFXNoRj6cOUTy86wpXykaFe3RGqF4tybDulYj9N1bRYHcJFs/HzJWjz13L+JyrnA0lc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1743197416;
	bh=+6CAX3G0OUY+AdYVj52gLphnRLfrD1ZOuqjCzLw2C5M=;
	h=Subject:From:To:Date:From;
	b=Lg43kjpcPrEIp6SR9SX/sR4FXc1PJLwig7vd4e8INtQ8JSJMjSDDdRAL2FWZxPo/b
	 YADhKRAslllswhoE5YPSUhFYZzLDlKPL7TEVi6b07vK8vcbUy6BK0mO0PpYiF2XdHu
	 7BF5NUUZxguAnuN88EUZR2lxtYu7Jer4Hx1CMMW8=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A4885C4CEE4
	for <linux-kernel-announce@vger.kernel.org>; Fri, 28 Mar 2025 21:30:15 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id 3C4BF3805D89
	for <linux-kernel-announce@vger.kernel.org>; Fri, 28 Mar 2025 21:30:53 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.12.21 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Fri, 28 Mar 2025 21:30:51 +0000
Message-Id: <20250328213051.release-6.12.21@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.12.21
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.12.21.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.12.21.xz

Linux kernel version 6.12.21 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.12.21.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.12.21.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.12.21.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v6.12.21/v6.12.20

