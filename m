Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8DAB64C7F
	for <linux-kernel-announce@vger.kernel.org>; Sun, 18 May 2025 06:40:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747550408; cv=none; b=OU08L3FgQvvl3ZVklbBQxver29B4NN2EvTqEEl9/am1bMG6rNegFWeJZsgNk8LdXO9zwCsMUwwcIzPYdi1xLoQJwOKF5BKkskO54nQlb6hBRiq56ERbp8Hkc216SQdgrZrDgMtDoRdBPAcgep56WXd2KSTVNyvpKFyM1GJqqcxk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747550408; c=relaxed/simple;
	bh=+rSmcVHvun62nNPDu1WegCZ/18txEZ1J+AKAuAgFQOY=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=DUCpYj/G8LEOr2sHUuiH+C2VPbbcPJc9kGNw7du1Nv/AiDSqTZ+A0Oq677YK3b9OVj1WOh1plrvRn0FfwMW+TPbTd6YU7u18M4Vtyv/09k8ONfHbgJ97utgqrLcpRpW06eoY/hlpOWBCE+8ZI58WfXow1shdRmwfugDpjOrC/vY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1747550408;
	bh=+rSmcVHvun62nNPDu1WegCZ/18txEZ1J+AKAuAgFQOY=;
	h=Subject:From:To:Date:From;
	b=mxLZoqw23Ty+ntJT5sg5CsxVkQKz+MpgCJWYl9UUChruVqMuTVSDmTllxmWnCvDt7
	 dxjcJNWgVjAhwW3/cm8lbng9cc6vkq3S0X0Fr8hOx9e6eI7GJ7+uuvybq2cquAFN+Z
	 wHVKFTYwtY54Pi49gmPEIUWRNsCRaSRAZZAcuTQE=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1B7DAC4CEE7
	for <linux-kernel-announce@vger.kernel.org>; Sun, 18 May 2025 06:40:08 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id B298B380AAFB
	for <linux-kernel-announce@vger.kernel.org>; Sun, 18 May 2025 06:40:45 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.1.139 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Sun, 18 May 2025 06:40:44 +0000
Message-Id: <20250518064044.release-6.1.139@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.1.139
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.1.139.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.1.139.xz

Linux kernel version 6.1.139 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.1.139.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.1.139.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.1.139.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v6.1.139/v6.1.138

