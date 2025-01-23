Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 850B67E105
	for <linux-kernel-announce@vger.kernel.org>; Thu, 23 Jan 2025 16:45:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737650723; cv=none; b=NkF5YJEdnPUGBIWigCPHQH7L3cN6++A3TFcmIeuQueM7JEnSh9jYDovoF29WlQani8ALP47PnC49p5eyzT0WQznlNzA9OchnjlGJFWWut6wSI58lzoh0eAoXY0ixLGsEPINx+AA0yJPncTqG7l3gOOTIvpAqIPQ+RpIPcQSE6Go=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737650723; c=relaxed/simple;
	bh=8i+duoR2OXoqqXZL2KeblPb+h9w8z5zSv8bBmnu46jY=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=g3BwoWIlTjzJPDcrwXEJnLiKGF/sS/SSzuIdUASJbAZ/UGTbeeuVHQmwakQSMWit7JACncjpqKSAltKTeMACkRUh3sm6GAvPS8BJPRJi+z4KTQIb7QOwVJVWDfOBs6OekipewYDcbf0SE/UczZ2s8yQo2q06r71WFZgAAJqzT8Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1737650723;
	bh=8i+duoR2OXoqqXZL2KeblPb+h9w8z5zSv8bBmnu46jY=;
	h=Subject:From:To:Date:From;
	b=Uv9zV24DX8qxAWw6/abVEZjmsLIO96gAyE75TdXC2qRoy+TNqmqXsrvq/4zzoVR6I
	 Gjkblm1mF8DrocvCLwlFekWJoddOwKNny+LPxMXI2Qq5BikaYndyz22p0BoqexM/dV
	 +eZcV5HtEL1Aiapt9N3zAcRemWkrYdGnDWuKDle8=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1A18DC4CEDD
	for <linux-kernel-announce@vger.kernel.org>; Thu, 23 Jan 2025 16:45:23 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id EB570380AA79
	for <linux-kernel-announce@vger.kernel.org>; Thu, 23 Jan 2025 16:45:48 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.6.74 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Thu, 23 Jan 2025 16:45:47 +0000
Message-Id: <20250123164547.release-6.6.74@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.6.74
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.6.74.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.6.74.xz

Linux kernel version 6.6.74 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.6.74.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.6.74.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.6.74.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v6.6.74/v6.6.73

