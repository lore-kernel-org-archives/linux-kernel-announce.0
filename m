Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7D31937FF76
	for <linux-kernel-announce@vger.kernel.org>; Fri, 19 Jun 2026 11:45:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781869527; cv=none; b=R/COow/J3svtt4DMyqiaHeDZBL2rHlQNSmDKi5DhW7Gr3/4+aRg3w09CIUNBZI8pwWNFfERlsTvj+kLIHeKl+CqnoYWD7MYD+S0X9xBZMavjxJe2m2L2oB3ccVeWBaAtErFRkLUa8wIisDaioPp8HazGVLvH9CTA959zmYXZWbQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781869527; c=relaxed/simple;
	bh=exZuRBgyWtwSoypSdSlTRRz4Ji7CNroARXWyn5Fsegw=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=p/CptXf6JeWZu+YVLuP/UtJFoiumEJLx/kRsfVYhTKLKsnP/2p/hGRrhA6h3rt10mGr0jL3sAv9dlAj/jF8AvTEbT0dQ7fBOGRb0ZlGtOpOVHiCS2eEQYq8gV2RiEAZzVqx6mZOuPmV02LXzOZH4YwNylPqV4t42aPJ2qu2UdrQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1781869527;
	bh=exZuRBgyWtwSoypSdSlTRRz4Ji7CNroARXWyn5Fsegw=;
	h=Subject:From:To:Date:From;
	b=WbS6r/SWahRtCZd7ZtHiO9tUO21y9lSRbZth0sCjbus9G2pmGkrrdc+EVEfyG549h
	 qHc9KKH8MX1oN81U3nBZ/VMIPZ8iN8AisHH48DJc5MedeFRU0CnjYHyyGzffvJJhTr
	 shIO5ea0MUS7jLiVOBocP709hbQJSdcOzyHs6H0c=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5F3881F000E9
	for <linux-kernel-announce@vger.kernel.org>; Fri, 19 Jun 2026 11:45:26 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id 964553AA6A54
	for <linux-kernel-announce@vger.kernel.org>; Fri, 19 Jun 2026 11:45:20 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 5.15.210 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Fri, 19 Jun 2026 11:45:19 +0000
Message-Id: <20260619114519.release-5.15.210@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 5.15.210
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v5.x/linux-5.15.210.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v5.x/patch-5.15.210.xz

Linux kernel version 5.15.210 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v5.x/linux-5.15.210.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v5.x/patch-5.15.210.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v5.x/linux-5.15.210.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v5.15.210/v5.15.209

