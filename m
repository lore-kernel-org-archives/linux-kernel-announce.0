Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ED383343210
	for <linux-kernel-announce@vger.kernel.org>; Thu, 11 Sep 2025 15:35:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757604947; cv=none; b=ZGm0JE5U9Y8S9YtseGS445eo7tHBDASnxfTdD7gxYjEWVNL5YuNWcBgwGBCC82w+vbA6uJsM23/pRV/yG8Sv3rzG8aCmGcrwA0FCeIR16f3g5V53Rabg8CwIAUHqR6cB5VoUbLyyDd2ew70qhkPUwzegfNJE3/fMTjf+Ri33c2A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757604947; c=relaxed/simple;
	bh=JiRJ5caCwpGBmK9+e7CzQtrbAuMmy2RTAdzOvxEZLEQ=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=Lt7DYgM6og+nK5yEUCvhp0J++AOTiaVmsTRgXcnsr27SFcdVnoGtl+tWAQng9ZzdSeZ7lqEI1Y8vEGm9gJCtL+9qZlZdoHQetYHtmHAGmWSA4feRpp5NeiIXhNSWerLfA9gf0Bizpv2oXnV4iaepIZw3GARJWCodMhjzJcHCqPk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1757604947;
	bh=JiRJ5caCwpGBmK9+e7CzQtrbAuMmy2RTAdzOvxEZLEQ=;
	h=Subject:From:To:Date:From;
	b=jlhxHemWpb1mLb6vcTL/ACFKrelznfQI9PnCxEu95jG2F6G3ayO6HvvOU5NM97Z2l
	 3xxCc1+AeeF+TdrjMAvPEcXUh/Ezm8B7cYZJ+UufDMbR8J2Wcc1w96nYJfCwL6RGVJ
	 nEwNBjRqmVMWys5mXr74v3tFB5UIxAkELnL7xMKM=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8EE27C4CEF0
	for <linux-kernel-announce@vger.kernel.org>; Thu, 11 Sep 2025 15:35:46 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id 70D0E383BF69
	for <linux-kernel-announce@vger.kernel.org>; Thu, 11 Sep 2025 15:35:50 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 5.15.193 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Thu, 11 Sep 2025 15:35:49 +0000
Message-Id: <20250911153549.release-5.15.193@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 5.15.193
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v5.x/linux-5.15.193.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v5.x/patch-5.15.193.xz

Linux kernel version 5.15.193 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v5.x/linux-5.15.193.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v5.x/patch-5.15.193.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v5.x/linux-5.15.193.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v5.15.193/v5.15.192

