Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 631771B86CD
	for <linux-kernel-announce@vger.kernel.org>; Sat, 27 Jul 2024 10:05:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722074746; cv=none; b=UavTsfcgKZfXvXnM6ERNtfAZCMLfVGgooDGkm+f3jpskVH91ICUZTnFABoAdao3uLq9sjNL8xPmm5joY8QaCwgL2nOiCMWLD4zegErndTkpaTSqslMsqLf5vGoJM7J9DiWMMKEQdNieLCe+VBsDJEiRE5TWA32ADurLgNK/Ybrs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722074746; c=relaxed/simple;
	bh=Tjv9xlcvfG6YzgRkOugkSVa6WF5ybP3GrHp7TZ4nKX0=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=c0uIRDnHPpG1Ctxu3V9LYXR2LGkrqJjuOz6jtU+qwshOcXlmQQZQxub/TDcLzXOcNmSq1u13ogM3mEbZs33HE0VMSpBUL1rs9TWtEv1VppFSgxsUsDanW1EBJBWKQBy/xTzj3rnc3dPiG3V6qumRck75BotluHFuzZHuCB0AHwg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1722074746;
	bh=Tjv9xlcvfG6YzgRkOugkSVa6WF5ybP3GrHp7TZ4nKX0=;
	h=Subject:From:To:Date:From;
	b=cJ+hMztQD1+okdQf+3PyYlI0tEkyiqKOHyUrLZ/Prg5QqfcnV9BrB5FwBxqbNTY5x
	 S5yCCvM/Ek7G9DoRIddwpVFLT/412h5pbmMXfVSZwgb74c4hlb0xwW9pc74ZSMlEnA
	 l1kjmCpzio13S8D9mUbdPjwLw/+91v4g3OytPk7A=
Received: by smtp.kernel.org (Postfix) with ESMTPS id F2FCAC32781
	for <linux-kernel-announce@vger.kernel.org>; Sat, 27 Jul 2024 10:05:45 +0000 (UTC)
Received: from aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (localhost.localdomain [127.0.0.1])
	by aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (Postfix) with ESMTP id DD66EC43443
	for <linux-kernel-announce@vger.kernel.org>; Sat, 27 Jul 2024 10:05:45 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.10.2 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Sat, 27 Jul 2024 10:05:45 +0000
Message-Id: <20240727100545.release-6.10.2@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.10.2
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.10.2.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.10.2.xz

Linux kernel version 6.10.2 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.10.2.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.10.2.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.10.2.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v6.10.2/v6.10.1

