Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C30B22173E
	for <linux-kernel-announce@vger.kernel.org>; Fri,  7 Mar 2025 17:50:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741369819; cv=none; b=ExprLDdMKANV5Uar/4O7JrQ3+SzdRk/gikzqurkxMqqUGIPNTknxQFO7bw7nC1Ep2T7W8fUfDwT72yYhTrsInB3mO87m4uGlCS5N0jINpHrOyG+r+3XNz8dym2y20O9ME6AmhdNPmpoOe8O19SamyUls0aihaOoFd+93xuLHA8E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741369819; c=relaxed/simple;
	bh=nTMisuDdUM3u6bPG9bEV87rkoUPq0iIP67Ir3LPn4BA=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=H7exT0ztEGFX9iBXq5S0/awOdxAnMHJ8mhLmbbVejo+qzlMtPYuTye9b1b7UCeT2CptGB/Sjka9gbN6G7EsR6/9Pz+BPp3qc2kQR5xErLXfbMkJd+XixX8lOV0C+fTYwAgRczwbpJR2VYg2okieILHR0pCZA8W3m/uspWltOczE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1741369819;
	bh=nTMisuDdUM3u6bPG9bEV87rkoUPq0iIP67Ir3LPn4BA=;
	h=Subject:From:To:Date:From;
	b=aMHJkWsWoOWydXBRZD1uflVXXLukuAQmFijvmlk0Ttc9ONPLgfTpiCC8axa0kVGah
	 KLBRDB4Gqa9ydptf7iEcQELfhMSaXmQeYT13ZCJ26p2+uthNkYbhG6iDfufv3KV+OR
	 M6Bh3Qv2daMr8RieHt+KzK9N9HnOE1qC8QAAqY34=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7C7F8C4CED1
	for <linux-kernel-announce@vger.kernel.org>; Fri,  7 Mar 2025 17:50:16 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id 33A90380CFD7
	for <linux-kernel-announce@vger.kernel.org>; Fri,  7 Mar 2025 17:50:51 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.12.18 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Fri, 07 Mar 2025 17:50:49 +0000
Message-Id: <20250307175049.release-6.12.18@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.12.18
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.12.18.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.12.18.xz

Linux kernel version 6.12.18 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.12.18.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.12.18.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.12.18.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v6.12.18/v6.12.17

