Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E3FE4C9B
	for <linux-kernel-announce@vger.kernel.org>; Sat, 27 Jul 2024 08:45:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722069953; cv=none; b=Fm6Q5cyVLDmi6MpHGY8WaDywSaf2QVsA+GhDF69F8sLEgdb/niG7elO7E2HFrr/j7HuXumFWevw2HRbm1r769P3xPrAxPUNi6Z/WujZRxXJCVOf7hdlUGfkQ408NAytJHG3lC0DvXjzvIZpqmZOcC3hQX9H5OBgtk15v4Mfnbtw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722069953; c=relaxed/simple;
	bh=HOsxsvCCknRj+y00Z3w4UnlEoIcpY2rw8KLtUizCzq8=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=lGywtqjWq6bTqpRUy4VXFLcyyewvAKgGBNv/U4h7LyQHjxVI96w8hChhWZFPCdJ18JYIEMbPGrLSH6X50+M+dHYsx9loqkdjTPFW6nVHkV3EOXkKjlB+2AUZ8YMAkju9wj7c2Y7Mebn/+OraJjzAizqKKWE3gsx73P6DqMsLXhY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1722069953;
	bh=HOsxsvCCknRj+y00Z3w4UnlEoIcpY2rw8KLtUizCzq8=;
	h=Subject:From:To:Date:From;
	b=PE/lfFOlpV2N/ZYq4cJicL4eiDVQAJe7Y9gA2cgo18hj8FJ9iHtvvcb4JRgs1hxNb
	 VD2u1dTDRViNajrdthJtnrWZlwqs7CujD/PNF9gzCHGs7uSdxcntvFjN1Bo+R2KnRX
	 uXwzCXz20V7mTaE57mb+GbmOBRpH+G4MTUCEpef0=
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1E6FC32781
	for <linux-kernel-announce@vger.kernel.org>; Sat, 27 Jul 2024 08:45:52 +0000 (UTC)
Received: from aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (localhost.localdomain [127.0.0.1])
	by aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (Postfix) with ESMTP id AF937C43443
	for <linux-kernel-announce@vger.kernel.org>; Sat, 27 Jul 2024 08:45:52 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 4.19.319 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Sat, 27 Jul 2024 08:45:52 +0000
Message-Id: <20240727084552.release-4.19.319@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 4.19.319
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v4.x/linux-4.19.319.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v4.x/patch-4.19.319.xz

Linux kernel version 4.19.319 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v4.x/linux-4.19.319.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v4.x/patch-4.19.319.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v4.x/linux-4.19.319.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v4.19.319/v4.19.318

